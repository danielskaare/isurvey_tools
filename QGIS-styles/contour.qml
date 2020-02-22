<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.4.3-Madeira" styleCategories="Symbology|Labeling">
  <renderer-v2 forceraster="0" symbollevels="0" type="RuleRenderer" enableorderby="0">
    <rules key="{c377be54-c6b9-4923-9046-2d3206015d40}">
      <rule filter=" &quot;ELEV&quot;  % 25 &lt;> 0" label="Minor (5)" symbol="0" key="{c6bca326-0690-4414-a17e-f0c28b7dbffb}"/>
      <rule filter=" &quot;ELEV&quot; % 25 = 0" label="Major (25)" symbol="1" key="{6a983e9e-fd93-4afa-b95c-388711a4701a}"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" type="line" name="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.06" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" type="line" name="1">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{f25e7326-505f-4b1e-8fe0-8d559fa0f816}">
      <rule filter=" &quot;ELEV&quot; % 25 = 0" description="Major (25)" scalemindenom="1000" key="{d751b01d-379c-40e0-8ff3-ba8564d8b91b}" scalemaxdenom="15000">
        <settings>
          <text-style namedStyle="Regular" fontWordSpacing="0" blendMode="0" fontUnderline="0" fontCapitals="0" previewBkgrdColor="#ffffff" fieldName="ELEV" fontItalic="0" textColor="0,0,0,255" fontLetterSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="8" useSubstitutions="0" fontWeight="50" isExpression="0" multilineHeight="1" fontSizeUnit="Point" fontFamily="MS Shell Dlg 2" fontStrikeout="0" textOpacity="1">
            <text-buffer bufferDraw="1" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferNoFill="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferSize="0.8" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRotationType="0" shapeType="0" shapeDraw="0" shapeOffsetY="0" shapeOffsetX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeRotation="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeUnit="MM" shapeSizeX="0" shapeRadiiUnit="MM" shapeSizeType="0" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeRadiiX="0" shapeJoinStyle="64" shapeOpacity="1"/>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowRadius="1.5" shadowDraw="0" shadowScale="100" shadowOffsetGlobal="1" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowBlendMode="6" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.7" shadowColor="0,0,0,255" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0"/>
            <substitutions/>
          </text-style>
          <text-format formatNumbers="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" decimals="3" multilineAlign="4294967295" autoWrapLength="0" plussign="0" rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar=""/>
          <placement placementFlags="9" maxCurvedCharAngleOut="-25" centroidInside="0" offsetUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" placement="2" quadOffset="4" yOffset="0" centroidWhole="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" dist="0" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" xOffset="0" maxCurvedCharAngleIn="25" distUnits="MM" repeatDistanceUnits="MM" preserveRotation="1" offsetType="0" repeatDistance="0"/>
          <rendering scaleVisibility="0" obstacleType="0" obstacleFactor="0.5600000000000001" labelPerPart="0" fontMinPixelSize="3" displayAll="0" drawLabels="1" mergeLines="1" fontMaxPixelSize="10000" limitNumLabels="0" scaleMax="0" minFeatureSize="0" maxNumLabels="2000" scaleMin="0" upsidedownLabels="0" zIndex="0" fontLimitPixelSize="0" obstacle="1"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </dd_properties>
        </settings>
      </rule>
      <rule filter=" &quot;ELEV&quot; % 25 &lt;> 0" description="Minor (5)" key="{d9ab88d3-201e-4841-866f-32353ab9d2bc}">
        <settings>
          <text-style namedStyle="Regular" fontWordSpacing="0" blendMode="0" fontUnderline="0" fontCapitals="0" previewBkgrdColor="#ffffff" fieldName="" fontItalic="0" textColor="0,0,0,255" fontLetterSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="10" useSubstitutions="0" fontWeight="50" isExpression="1" multilineHeight="1" fontSizeUnit="Point" fontFamily="MS Shell Dlg 2" fontStrikeout="0" textOpacity="1">
            <text-buffer bufferDraw="0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferNoFill="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRotationType="0" shapeType="0" shapeDraw="0" shapeOffsetY="0" shapeOffsetX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeRotation="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeUnit="MM" shapeSizeX="0" shapeRadiiUnit="MM" shapeSizeType="0" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeRadiiX="0" shapeJoinStyle="64" shapeOpacity="1"/>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowRadius="1.5" shadowDraw="0" shadowScale="100" shadowOffsetGlobal="1" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowBlendMode="6" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.7" shadowColor="0,0,0,255" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0"/>
            <substitutions/>
          </text-style>
          <text-format formatNumbers="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" decimals="3" multilineAlign="4294967295" autoWrapLength="0" plussign="0" rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar=""/>
          <placement placementFlags="10" maxCurvedCharAngleOut="-25" centroidInside="0" offsetUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" placement="2" quadOffset="4" yOffset="0" centroidWhole="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" dist="0" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" xOffset="0" maxCurvedCharAngleIn="25" distUnits="MM" repeatDistanceUnits="MM" preserveRotation="1" offsetType="0" repeatDistance="0"/>
          <rendering scaleVisibility="0" obstacleType="0" obstacleFactor="1" labelPerPart="0" fontMinPixelSize="3" displayAll="0" drawLabels="1" mergeLines="0" fontMaxPixelSize="10000" limitNumLabels="0" scaleMax="0" minFeatureSize="0" maxNumLabels="2000" scaleMin="0" upsidedownLabels="0" zIndex="0" fontLimitPixelSize="0" obstacle="1"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </dd_properties>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>1</layerGeometryType>
</qgis>
