<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.10.0-A Coruña" styleCategories="Symbology|Labeling">
  <renderer-v2 enableorderby="0" type="RuleRenderer" forceraster="0" symbollevels="0">
    <rules key="{9a835404-f0b4-433b-8add-041df4ca8bcb}">
      <rule symbol="0" key="{38bd5b41-a50f-4d90-8ffc-c97a17786d3e}" filter="Z % 10 = 0" label="major (10m)"/>
      <rule symbol="1" key="{97aa3291-6318-44c2-833c-efa6b9762bf1}" filter="Z % 10 &lt;> 0" label="minor (2m)"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" type="line" clip_to_extent="1" alpha="1" name="0">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="31,120,180,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="line" clip_to_extent="1" alpha="1" name="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="31,120,180,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.26" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{1c502097-59b3-405f-80eb-00ca7193b486}">
      <rule scalemindenom="500" key="{e2b7c861-b5fd-4696-b063-dfca98b6b0d9}" description="major" filter="Z % 10 = 0" scalemaxdenom="10000">
        <settings calloutType="simple">
          <text-style fontUnderline="0" textColor="0,0,0,255" fieldName="Z" namedStyle="Regular" multilineHeight="1" fontWordSpacing="0" blendMode="0" fontWeight="50" textOrientation="horizontal" fontKerning="1" fontItalic="0" fontCapitals="0" fontFamily="MS Shell Dlg 2" fontSizeUnit="Point" isExpression="0" previewBkgrdColor="255,255,255,255" fontLetterSpacing="0" fontSize="10" useSubstitutions="0" textOpacity="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0">
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferSizeUnits="MM" bufferNoFill="1" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128" bufferDraw="0" bufferColor="255,255,255,255"/>
            <background shapeRotation="0" shapeRadiiY="0" shapeSizeType="0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeOpacity="1" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeDraw="0" shapeType="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeSizeX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeFillColor="255,255,255,255" shapeRadiiX="0" shapeJoinStyle="64" shapeSizeUnit="MM">
              <symbol force_rhr="0" type="marker" clip_to_extent="1" alpha="1" name="markerSymbol">
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <prop v="0" k="angle"/>
                  <prop v="213,180,60,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowDraw="0" shadowRadiusUnit="MM" shadowBlendMode="6" shadowOffsetDist="1" shadowOpacity="0.7" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadius="1.5" shadowOffsetUnit="MM" shadowScale="100" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowUnder="0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" autoWrapLength="0" decimals="3" reverseDirectionSymbol="0" placeDirectionSymbol="0" plussign="0" multilineAlign="0" formatNumbers="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" wrapChar=""/>
          <placement preserveRotation="1" maxCurvedCharAngleIn="25" geometryGenerator="" centroidWhole="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" layerType="LineGeometry" overrunDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" fitInPolygonOnly="0" geometryGeneratorEnabled="0" yOffset="0" maxCurvedCharAngleOut="-25" placementFlags="9" quadOffset="4" placement="2" distUnits="MM" repeatDistanceUnits="MM" centroidInside="0" xOffset="0" overrunDistanceUnit="MM" geometryGeneratorType="PointGeometry" offsetUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" dist="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistance="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5"/>
          <rendering labelPerPart="0" upsidedownLabels="0" drawLabels="1" fontMaxPixelSize="10000" obstacle="1" limitNumLabels="0" mergeLines="0" minFeatureSize="0" scaleMax="0" displayAll="0" zIndex="0" scaleVisibility="0" obstacleType="0" fontMinPixelSize="3" scaleMin="0" maxNumLabels="2000" fontLimitPixelSize="0" obstacleFactor="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="500" key="{bcecd928-3af1-48c0-bdde-2b41963c0b68}" description="minor" filter="Z % 10 &lt;> 0" scalemaxdenom="5000">
        <settings calloutType="simple">
          <text-style fontUnderline="0" textColor="0,0,0,255" fieldName="Z" namedStyle="Regular" multilineHeight="1" fontWordSpacing="0" blendMode="0" fontWeight="50" textOrientation="horizontal" fontKerning="1" fontItalic="0" fontCapitals="0" fontFamily="MS Shell Dlg 2" fontSizeUnit="Point" isExpression="0" previewBkgrdColor="255,255,255,255" fontLetterSpacing="0" fontSize="10" useSubstitutions="0" textOpacity="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0">
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferSizeUnits="MM" bufferNoFill="1" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128" bufferDraw="0" bufferColor="255,255,255,255"/>
            <background shapeRotation="0" shapeRadiiY="0" shapeSizeType="0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeOpacity="1" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeDraw="0" shapeType="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeSizeX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeFillColor="255,255,255,255" shapeRadiiX="0" shapeJoinStyle="64" shapeSizeUnit="MM">
              <symbol force_rhr="0" type="marker" clip_to_extent="1" alpha="1" name="markerSymbol">
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <prop v="0" k="angle"/>
                  <prop v="114,155,111,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowDraw="0" shadowRadiusUnit="MM" shadowBlendMode="6" shadowOffsetDist="1" shadowOpacity="0.7" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadius="1.5" shadowOffsetUnit="MM" shadowScale="100" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowUnder="0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" autoWrapLength="0" decimals="3" reverseDirectionSymbol="0" placeDirectionSymbol="0" plussign="0" multilineAlign="0" formatNumbers="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" wrapChar=""/>
          <placement preserveRotation="1" maxCurvedCharAngleIn="25" geometryGenerator="" centroidWhole="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" layerType="LineGeometry" overrunDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" fitInPolygonOnly="0" geometryGeneratorEnabled="0" yOffset="0" maxCurvedCharAngleOut="-25" placementFlags="10" quadOffset="4" placement="2" distUnits="MM" repeatDistanceUnits="MM" centroidInside="0" xOffset="0" overrunDistanceUnit="MM" geometryGeneratorType="PointGeometry" offsetUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" dist="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistance="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5"/>
          <rendering labelPerPart="0" upsidedownLabels="0" drawLabels="1" fontMaxPixelSize="10000" obstacle="1" limitNumLabels="0" mergeLines="0" minFeatureSize="0" scaleMax="0" displayAll="0" zIndex="0" scaleVisibility="0" obstacleType="0" fontMinPixelSize="3" scaleMin="0" maxNumLabels="2000" fontLimitPixelSize="0" obstacleFactor="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>1</layerGeometryType>
</qgis>
