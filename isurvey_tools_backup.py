# -*- coding: utf-8 -*-
"""
/***************************************************************************
 iSurveyTools
                                 A QGIS plugin
 This plugin is a tool to easier import data from iSurveys Masterfile
 Generated by Plugin Builder: http://g-sherman.github.io/Qgis-Plugin-Builder/
                              -------------------
        begin                : 2020-01-16
        git sha              : $Format:%H$
        copyright            : (C) 2020 by Daniel Skåre
        email                : dags@isurvey-group.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
from qgis.PyQt.QtCore import QSettings, QTranslator, QCoreApplication
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QAction

import sqlite3, sys
import pandas as pd
from qgis.core import QgsVectorLayer, QgsVectorFileWriter, QgsProject
from urllib.request import pathname2url
import os.path
from os import path

import requests

from PyQt5.QtWidgets import QAction, QMessageBox, QFileDialog
# from qgis.core import (QgsCoordinateReferenceSystem,
#                        QgsCoordinateTransform,
#                        QgsProject,
#                        QgsRectangle,
#                        QgsPointXY,
#                        QgsGeometry,
#                        QgsVectorLayer,
#                        QgsFeature)

# Initialize Qt resources from file resources.py
from .resources import *
# Import the code for the dialog
from .isurvey_tools_dialog import iSurveyToolsDialog
import os.path


class iSurveyTools:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):
        """Constructor.

        :param iface: An interface instance that will be passed to this class
            which provides the hook by which you can manipulate the QGIS
            application at run time.
        :type iface: QgsInterface
        """
        # Save reference to the QGIS interface
        self.iface = iface
        # initialize plugin directory
        self.plugin_dir = os.path.dirname(__file__)
        # initialize locale
        locale = QSettings().value('locale/userLocale')[0:2]
        locale_path = os.path.join(
            self.plugin_dir,
            'i18n',
            'iSurveyTools_{}.qm'.format(locale))

        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)
            QCoreApplication.installTranslator(self.translator)

        # Declare instance attributes
        self.actions = []
        self.menu = self.tr(u'&iSurvey Tools')

        # Check if plugin was started the first time in current QGIS session
        # Must be set in initGui() to survive plugin reloads
        self.first_start = None

    # noinspection PyMethodMayBeStatic
    def tr(self, message):
        """Get the translation for a string using Qt translation API.

        We implement this ourselves since we do not inherit QObject.

        :param message: String for translation.
        :type message: str, QString

        :returns: Translated version of message.
        :rtype: QString
        """
        # noinspection PyTypeChecker,PyArgumentList,PyCallByClass
        return QCoreApplication.translate('iSurveyTools', message)


    def add_action(
        self,
        icon_path,
        text,
        callback,
        enabled_flag=True,
        add_to_menu=True,
        add_to_toolbar=True,
        status_tip=None,
        whats_this=None,
        parent=None):
        """Add a toolbar icon to the toolbar.

        :param icon_path: Path to the icon for this action. Can be a resource
            path (e.g. ':/plugins/foo/bar.png') or a normal file system path.
        :type icon_path: str

        :param text: Text that should be shown in menu items for this action.
        :type text: str

        :param callback: Function to be called when the action is triggered.
        :type callback: function

        :param enabled_flag: A flag indicating if the action should be enabled
            by default. Defaults to True.
        :type enabled_flag: bool

        :param add_to_menu: Flag indicating whether the action should also
            be added to the menu. Defaults to True.
        :type add_to_menu: bool

        :param add_to_toolbar: Flag indicating whether the action should also
            be added to the toolbar. Defaults to True.
        :type add_to_toolbar: bool

        :param status_tip: Optional text to show in a popup when mouse pointer
            hovers over the action.
        :type status_tip: str

        :param parent: Parent widget for the new action. Defaults None.
        :type parent: QWidget

        :param whats_this: Optional text to show in the status bar when the
            mouse pointer hovers over the action.

        :returns: The action that was created. Note that the action is also
            added to self.actions list.
        :rtype: QAction
        """

        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)

        if whats_this is not None:
            action.setWhatsThis(whats_this)

        if add_to_toolbar:
            # Adds plugin icon to Plugins toolbar
            self.iface.addToolBarIcon(action)

        if add_to_menu:
            self.iface.addPluginToVectorMenu(
                self.menu,
                action)

        self.actions.append(action)

        return action

    def initGui(self):
        """Create the menu entries and toolbar icons inside the QGIS GUI."""

        icon_path = ':/plugins/isurvey_tools/icon.png'
        self.add_action(
            icon_path,
            text=self.tr(u'Import from Masterfile'),
            callback=self.run,
            parent=self.iface.mainWindow())

        # will be set False in run()
        self.first_start = True


    def unload(self):
        """Removes the plugin menu item and icon from QGIS GUI."""
        for action in self.actions:
            self.iface.removePluginVectorMenu(
                self.tr(u'&iSurvey Tools'),
                action)
            self.iface.removeToolBarIcon(action)

    def openSelectDB(self):
        # dbFile,_ = QFileDialog.getOpenFileName(self, 'Open DB file', 'c:\\', "SQL Lite DB (*.db *.db3)")
        dbFile,_ = QFileDialog.getOpenFileName()
        if dbFile:
            self.dlg.line_db_path.setText(os.path.abspath(dbFile))

    def initDBConnection(self):
        master_file_path = self.dlg.line_db_path.value()
        if path.exists(master_file_path):
            print("File exists")
            dburi = 'file:{}?mode=rw'.format(pathname2url(master_file_path))
            try:
                conn = sqlite3.connect(dburi, uri=True)
            except sqlite3.OperationalError:
                dburi = 'file:{}?mode=rwc'.format(pathname2url(master_file_path))
                try:
                    conn = sqlite3.connect(dburi, uri=True)
                except:
                    print("Unexpected error:" + str(sys.exc_info()[0]))
                err2 = "Database: " + str(master_file_path) + " does not exist and will be created. Continue..."
                print(err2)
            if conn is None:
                print("Error! cannot create the database connection.")
                QMessageBox.critical(self.iface.mainWindow(),
                                     'Import Masterfile error',
                                     "Cant't connect to Masterfile. Is some other program connected to it and blocking it?\nExiting...")
            return conn
        else:
            print("File does not exist")
            return None

    def validateMasterfile(self):
        print("You pushed Validate Masterfile button")
        conn = self.initDBConnection()
        with conn:
            try:
                sql_query_rpl = 'SELECT kp, easting, northing, kp_depth, version FROM rpl;'
                sql_query_as_laid = 'SELECT kp, easting, northing, depth, rpl_id FROM as_laid;'
                sql_query_capjet_track = 'SELECT kp, easting, northing, sword_depth, rpl_id FROM trenching;'
                sql_query_as_trenched = 'SELECT kp, easting, northing, depth_pipe, rpl_id FROM as_trenched;'
                sql_query_events = 'SELECT kp, easting, northing, depth, revision FROM events;'
                sql_query_rov_track = ''
                sql_query_icc_files = ''
                df_rpl = pd.read_sql(sql_query_rpl, conn)
                df_as_laid = pd.read_sql(sql_query_as_laid, conn)
                df_capjet_track = pd.read_sql(sql_query_capjet_track, conn)
                df_as_trenched = pd.read_sql(sql_query_as_trenched, conn)
                df_events = pd.read_sql(sql_query_events, conn)
                if df_rpl.empty:
                    self.dlg.cB_runline.setStyleSheet("color: red")
                    self.dlg.cB_runline.setChecked(False)
                else:
                    self.dlg.cB_runline.setStyleSheet("color: green")
                    self.dlg.cB_runline.setChecked(True)

                if df_as_laid.empty:
                    self.dlg.cB_aslaid.setStyleSheet("color: red")
                    self.dlg.cB_aslaid.setChecked(False)
                else:
                    self.dlg.cB_aslaid.setStyleSheet("color: green")
                    self.dlg.cB_aslaid.setChecked(True)
                if df_capjet_track.empty:
                    self.dlg.cb_capjet.setStyleSheet("color: red")
                    self.dlg.cb_capjet.setChecked(False)
                else:
                    self.dlg.cb_capjet.setStyleSheet("color: green")
                    self.dlg.cb_capjet.setChecked(True)
                if df_as_trenched.empty:
                    self.dlg.cB_astrenched.setStyleSheet("color: red")
                    self.dlg.cB_astrenched.setChecked(False)
                else:
                    self.dlg.cB_astrenched.setStyleSheet("color: green")
                    self.dlg.cB_astrenched.setChecked(True)
                if df_events.empty:
                    self.dlg.cB_events.setStyleSheet("color: red")
                    self.dlg.cB_events.setChecked(False)
                else:
                    self.dlg.cB_events.setStyleSheet("color: green")
                    self.dlg.cB_events.setChecked(True)
            except sqlite3.IntegrityError:
                print("Operation Types are already in this database")
            except sqlite3.DatabaseError:
                print("Probable some of the tables or columns has the wrong name:" + str(sys.exc_info()[0]))
            except:
                print("Unexpected error Trying to initializeDB:" + str(sys.exc_info()[0]))

    def run(self):
        """Run method that performs all the real work"""

        # Create the dialog with elements (after translation) and keep reference
        # Only create GUI ONCE in callback, so that it will only load when the plugin is started
        if self.first_start == True:
            self.first_start = False
            self.dlg = iSurveyToolsDialog()

        # show the dialog
        self.dlg.show()
        # Run the dialog event loop
        result = self.dlg.exec_()

        self.dlg.pB_Browse.clicked.connect(self.openSelectDB)
        self.dlg.pB_Validate.clicked.connect(self.validateMasterfile)

        # Create a New project
        #pathQGS = "NewProject.qgs"
        #project = QgsProject.instance()
        #project.setFileName(pathQGS)
        # See if OK was pressed
        if result:
            conn = self.initDBConnection()
            if self.dlg.cB_runline.isChecked():
                print("Start Importing Runline")
                sql_query_rpl = 'SELECT kp, easting, northing, kp_depth, version FROM rpl;'
                df_rpl = pd.read_sql(sql_query_rpl, conn)
                if df_rpl.empty:
                    QMessageBox.critical(self.iface.mainWindow(),
                                         'Import Runline error',
                                         "Seems like the Runline table in the Masterfile is empty \nExiting...")
                    return
                else:
                    #name_csv = 'temp_masterfile_table.csv'
                    if not os.path.exists('C:\\temp\\'):
                        os.makedirs('C:\\temp\\')
                    name_csv = 'C:\\temp\\temp_masterfile_table.csv'
                    df_rpl.to_csv(name_csv, index=False)
                    #df_rpl.to_csv("C:\\temp\\test0101.csv", index=False)
                    path = "file:///" + name_csv + "?encoding=%s&delimiter=%s&xField=%s&yField=%s" % ("UTF-8", ",", "easting", "northing")
                    #path = "file:///" + name_csv + "?type=csv&detectTypes=yes&decimalPoint=,&xField=easting&yField=northing&crs=EPSG:23031&spatialIndex=no&subsetIndex=no&watchFile=no"
                    #path = "file:///" + name_csv + "?encoding=%s&delimiter=%s&xField=%s&yField=%s&crs=%s" % ("UTF-8", ",", "easting", "northing", "epsg:4326")
                    # ?type=csv&detectTypes=yes&decimalPoint=,&xField=easting&yField=northing&crs=EPSG:23031&spatialIndex=no&subsetIndex=no&watchFile=no
                    print("Path: " + path)
                    mylayer = QgsVectorLayer(path, "MasterFile_Runline", "delimitedtext")
                    if not mylayer.isValid():
                        print("Layer is not valid")
                    #project.addMapLayer(mylayer)
                    #project.write()

                    # qgs.exitQgis()
                    QMessageBox.information(self.iface.mainWindow(),
                                         'Sucessfully Imported Runline',
                                         "Sucessfully imported Runline as layer: \n MasterFile_Runline")


            if self.dlg.cB_aslaid.isChecked():
                print("Start Importing As-Laid")
                sql_query_as_laid = 'SELECT kp, easting, northing, depth, rpl_id FROM as_laid;'
                df_as_laid = pd.read_sql(sql_query_as_laid, conn)
                if df_as_laid.empty:
                    QMessageBox.critical(self.iface.mainWindow(),
                                         'Import As-Laid error',
                                         "Seems like the As-Laid table in the Masterfile is empty \nExiting...")
            if self.dlg.cb_capjet.isChecked():
                print("Start Capjet Track")
                sql_query_capjet_track = 'SELECT kp, easting, northing, sword_depth, rpl_id FROM trenching;'
                df_capjet_track = pd.read_sql(sql_query_capjet_track, conn)
                if df_capjet_track.empty:
                    QMessageBox.critical(self.iface.mainWindow(),
                                         'Import Capjet Track error',
                                         "Seems like the Capjet Track table in the Masterfile is empty \nExiting...")
            if self.dlg.cB_astrenched.isChecked():
                print("Start Importing As-Trenched")
                sql_query_as_trenched = 'SELECT kp, easting, northing, depth_pipe, rpl_id FROM as_trenched;'
                df_as_trenched = pd.read_sql(sql_query_as_trenched, conn)
                if  df_as_trenched.empty:
                    QMessageBox.critical(self.iface.mainWindow(),
                                         'Import As-Trenched error',
                                         "Seems like the As-Trenched table in the Masterfile is empty \nExiting...")
            if self.dlg.cB_events.isChecked():
                print("Start Importing Events")
                sql_query_events = 'SELECT kp, easting, northing, depth FROM events;'
                df_events = pd.read_sql(sql_query_events, conn)
                if df_events.empty:
                    QMessageBox.critical(self.iface.mainWindow(),
                                         'Import Event error',
                                         "Seems like the Event table in the Masterfile is empty \nExiting...")
            # Do something useful here - delete the line containing pass and
            # substitute with your code.
            print("Finished Program")
