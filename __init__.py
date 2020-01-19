# -*- coding: utf-8 -*-
"""
/***************************************************************************
 iSurveyTools
                                 A QGIS plugin
 This plugin is a tool to easier import data from iSurveys Masterfile
 Generated by Plugin Builder: http://g-sherman.github.io/Qgis-Plugin-Builder/
                             -------------------
        begin                : 2020-01-16
        copyright            : (C) 2020 by Daniel Skåre
        email                : dags@isurvey-group.com
        git sha              : $Format:%H$
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
 This script initializes the plugin, making it known to QGIS.
"""


# noinspection PyPep8Naming
def classFactory(iface):  # pylint: disable=invalid-name
    """Load iSurveyTools class from file iSurveyTools.

    :param iface: A QGIS interface instance.
    :type iface: QgsInterface
    """
    #
    from .isurvey_tools import iSurveyTools
    return iSurveyTools(iface)
