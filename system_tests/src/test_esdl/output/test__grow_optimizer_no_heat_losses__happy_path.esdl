<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="PoC Tutorial_SmartControlOptimized_grow_optimizer_no_heat_losses" id="3251628d-c5dd-4ac3-bb4d-76a649575106" description="" esdlVersion="v2207" version="13">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Primary" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0" name="Primary_ret"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA" unit="WATT"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND" id="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND" id="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
    </quantityAndUnits>
    <dataconfigurations xsi:type="esdl:DataConfigurations" id="400cea53-307e-48e2-9d02-c4495f345a24">
      <configurations xsi:type="esdl:DatabaseConfiguration" id="33e4bd7b-b488-44ed-bb11-385769af0824" database="3251628d-c5dd-4ac3-bb4d-76a649575106" type="POSTGRESQL" host="omotes_postgres" port="6432"/>
    </dataconfigurations>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <asset xsi:type="esdl:ResidualHeatSource" power="7822436.327999999" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b">
        <geometry xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" name="Out" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="58e5ea70-8ca2-45f3-9637-aaec9e53efe7" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="ed80ab2c-e0f3-4bff-9b4e-f3e805c02be4" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="97b7e3ae-3a50-4191-a300-6d8884864f0f" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="0bfab78f-50e3-4dfa-a906-89dd14ba7e4e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" name="In" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="100.0" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="de56cc5d-2baa-451c-b38c-47abea1393c2" description="Cost in EUR/MWh" perUnit="WATTHOUR" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </variableOperationalCosts>
          <installationCosts xsi:type="esdl:SingleValue" value="10000000.0" id="12c24715-08dc-4b61-ae15-76541704c83a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="89b04c83-eb32-49a3-adc4-492a719221d3" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
          </installationCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1500000.0" id="3102215e-50a4-4332-b16e-2fd6522df31b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="69673880-fe81-4f34-8fd9-558cc693a251" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="600000.0" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4c3a445d-d13f-4f61-8d75-22280135830f" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </fixedOperationalCosts>
          <marginalCosts xsi:type="esdl:SingleValue" value="1.0" id="e52de449-7340-4878-b582-d20711d9fb14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
          </marginalCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" name="Pipe1" outerDiameter="0.25" length="818.07" innerDiameter="0.1603" id="Pipe1" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717"/>
          <point xsi:type="esdl:Point" lon="4.365863800048829" lat="52.00210934629504"/>
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" id="fa85538e-ebfa-4bce-8386-04980e793e18" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" id="3bafa031-f40f-42fc-b409-e35fffe5f457" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" id="893337e3-58f1-4fb4-8c25-68d71b11fb71" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" name="In" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" name="Out" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="fa2717d2-2c71-42a2-a805-0f0209954f64" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="87e766fb-5134-4db6-af71-f935ca8dc686" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="685b06f3-0b97-43a2-bc0a-cbaa0a88f0ba" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="d4a9f18a-e43d-4d6a-9c2e-5c00847b6c7b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="b39442d1-05db-43fe-bf9a-42067daa4298" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="5ff6709c-02dd-4537-8f0a-db9ae4c54bb0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="1126.4" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c" id="a04cb927-426d-4016-a084-356002a85d6c">
        <geometry xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        <port xsi:type="esdl:InPort" id="d149871b-d76a-4cc3-8922-c8d99205f47e" name="In" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="3535f436-1270-4b1b-a326-41d69cd6e330" name="Out" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe2" outerDiameter="0.56" length="517.54" innerDiameter="0.3938" id="Pipe2" related="Pipe2_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="74d84321-1767-4cec-b6e7-b90c06020400" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" name="Out" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="3b475d79-0692-4492-a4a2-4e051c216ff6" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="b3404757-7a07-4a6e-8d68-b79a0ea53e43" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="86122700-7244-4e6a-a15c-274847a84520" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="67292b14-0891-438a-aea8-08d85297008c" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="2fabb054-dfc8-42b5-ba36-0454b6bef442" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="3253efa4-701c-423e-a998-75cd2367cf91" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe3" outerDiameter="0.56" length="1182.23" innerDiameter="0.3938" id="Pipe3" related="Pipe3_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373888969421388" lat="51.989029496545015"/>
          <point xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="74d84321-1767-4cec-b6e7-b90c06020400" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" id="e44060e9-8b0e-41e5-ae46-ce074c891c15" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="13edd58c-4a04-4770-8aac-c6e8689acbba" name="Out" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="e8d9d97e-4fef-4851-8365-9d97a4fc2d32" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="4b27a67d-3f52-456c-9b99-73a0a0b7894f" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="a9d7f678-7076-4d6d-a681-c807724d216c" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="d1780b88-224e-465d-94bf-730b97fd940b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="71d81797-5970-4a4a-b4d1-725cb3d09fba" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="07b798b0-6127-47ae-b696-5bdbafd221f4" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca" id="95caf7c7-e89f-4378-96f2-f904f9255c83">
        <geometry xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        <port xsi:type="esdl:InPort" id="4d629e6e-5db4-4a8f-9945-934a24ede11a" name="In" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="a42acf83-361d-4d4d-8001-8617daad939a" name="Out" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe4" outerDiameter="0.45" length="455.4" innerDiameter="0.3127" id="Pipe4" related="Pipe4_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="e4c0350c-cd79-45b4-a45c-6259c750b478" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="9a97f588-10fe-4a34-b0f2-277862151763" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="5169316d-ae93-4f04-9a34-7c776444b651" name="Out" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="8216bc8a-abda-475f-956d-f3fd98bc5e02" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="ad9ec193-a081-4509-b9c2-6522633fb730" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="9663357e-204d-4c5d-8f81-25faf0ec481e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="d5bb13ba-2a83-4dba-894e-f2604abd8b52" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="8b19e190-0c0c-4c20-b830-c0c8861a2077" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="dbec45a5-1141-4a88-88d5-3afa68edcf3f" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" name="Combined investment and installation costs" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe5" outerDiameter="0.45" length="252.3" innerDiameter="0.3127" id="Pipe5" related="Pipe5_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="e4c0350c-cd79-45b4-a45c-6259c750b478" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="9a97f588-10fe-4a34-b0f2-277862151763" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" id="20165ec3-cf86-41e4-976f-079ba0ca5be4" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" name="Out" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="a91d49ca-301e-4bb5-ad45-3be57bbcd81d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="8e716175-42c3-46ae-8dc0-151448b53ce8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="1f3b080d-ec46-46a3-8432-f786a58f8b2f" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="f9778dde-e80b-4a62-9d7c-83ca74337932" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="dac69221-84fa-47ac-962b-078936d0f68b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="e4dadb8a-360d-428a-ae01-b57e2d26c9e1" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" name="Combined investment and installation costs" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c_ret" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd">
        <geometry xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" name="ret_port" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="044ef084-2a9e-4356-bac2-207f5361d4ce" name="ret_port" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca_ret" id="b4a5be45-3352-4837-94d6-b110aa842da6">
        <geometry xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="6b4d9bba-484b-46aa-bfe6-895d491b6747" name="ret_port" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="5a47482f-6cdf-41b3-91b0-014578ee8143" name="ret_port" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" name="Pipe1_ret" outerDiameter="0.25" id="Pipe1_ret" length="818.07" innerDiameter="0.1603" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.365092860885141" lat="52.00219934638504" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.372228431895539" lat="52.004762020697164" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="2c3c73cb-d282-4c97-a060-922c91c50180" name="In_ret" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="c0a27794-98e2-4119-a363-cec4f0b525cd" name="Out_ret" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="5a61c239-bd9b-4963-bd23-f74b2973aaf7" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="97753483-5f0d-40e2-9ce8-16a6e7daf737" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="32d90363-60c2-4289-81bc-7aa325d47558" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="0d20ad59-53c8-48c1-89ec-fb45537fb087" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="cc147d7d-2d57-48e7-9461-e0f0c0b011a4" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="621dae32-209f-4d5c-ba6c-b9511f984f94" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" id="fa85538e-ebfa-4bce-8386-04980e793e18" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" id="3bafa031-f40f-42fc-b409-e35fffe5f457" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" id="893337e3-58f1-4fb4-8c25-68d71b11fb71" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe2_ret" outerDiameter="0.56" id="Pipe2_ret" length="517.54" innerDiameter="0.3938" related="Pipe2">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="da70a1aa-53c4-496e-ba63-2c04674b8c84" name="In_ret" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="c5df4e61-6603-4315-a45a-196903690d9e" name="Out_ret" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="15b440ef-e09f-407d-bd75-be3d64f80631" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="a674f53c-f4dd-47c7-979e-a97e9bfa39ca" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="b2fd8876-01eb-4d58-810f-22f7b2addacf" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="8c974e50-61e7-4fcb-8cd2-89ec2bbcb33c" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="36cd8055-04be-4b95-8056-26d076d64de1" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="87c7e151-b439-4bc9-a00a-d747053609f6" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe3_ret" outerDiameter="0.56" id="Pipe3_ret" length="1182.23" innerDiameter="0.3938" related="Pipe3">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.378211386257638" lat="51.990784417008705" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.37305259776345" lat="51.98911949663501" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8" name="In_ret" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="59b53a77-a253-4a96-81ef-84e719a1f518" name="Out_ret" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="87bda051-5d8f-4093-9175-c8fa01a53315" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="2e2dd2d9-a89a-40dd-a52c-c8fb6b286518" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="93143510-8ac9-4a0a-b423-3e638fb36d6e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="e9d771c8-a866-4ba8-a4e3-2a92ae99b096" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="8e5aad6c-689b-497b-882e-ecbcd340fa1d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="6b2a6595-6443-4f45-a41c-8233a11e91b1" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe4_ret" outerDiameter="0.45" id="Pipe4_ret" length="455.4" innerDiameter="0.3127" related="Pipe4">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372769808163894" lat="52.00114253074436" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="5e2f4591-43f2-489f-8eb2-63105dbd0355" name="In_ret" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" name="Out_ret" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="0d355462-5bde-4b22-8f69-882c277a3bf7" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="436d823f-ed2d-4101-a1da-1161dbc2433b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="86c57abc-f2de-46ec-b3c7-6c7a30e36692" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="5fcbcdc0-d953-4938-90fe-4c9f058b70e3" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="2059d403-e19f-4dc0-bf27-8687e8dd87bb" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="df0b6280-472c-443c-ad4a-5d5cc62a3073" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe5_ret" outerDiameter="0.45" id="Pipe5_ret" length="252.3" innerDiameter="0.3127" related="Pipe5">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372447461880088" lat="51.99657151577376" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="35ddd90a-e45c-4afd-95b4-80ce6c927071" name="In_ret" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" name="Out_ret" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="7ca75c4f-2e38-4de7-8472-3eb4f73f9b34" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
            <dataSource xsi:type="esdl:DataSource" id="6432c10b-b40b-445d-8a49-fb526f2f368f" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="8b4a4447-7f72-45ce-b57a-cc1cbebda61d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
            <dataSource xsi:type="esdl:DataSource" id="f377af6d-9c50-4dda-89f4-e6d2eba89a4f" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="9fd15270-5524-45c7-86dd-9813b079f047" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="aaeda7bc-7d6e-4a11-8b96-cee0de55b7d9"/>
            <dataSource xsi:type="esdl:DataSource" id="659670ad-6b98-4cbd-927f-f63d03f19172" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_b0ff" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" name="In" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand4_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" name="Out" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="d42cb5dc-7662-468d-8e8d-dc63670c8011" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
              <dataSource xsi:type="esdl:DataSource" id="b923220b-b8b4-4d8e-84e5-eff43e4ae526" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="605f2158-921d-4729-a024-e82bd88a43c8" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
              <dataSource xsi:type="esdl:DataSource" id="1bf51ec9-4ef5-40bc-9de4-6130a71b9ed7" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="08f06cd1-471b-404a-8894-27b315775b59">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="829c1c62-4266-4560-ac77-b961b7a722cf">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.376142024993897" lat="52.003232185574326"/>
            <point xsi:type="esdl:Point" lon="4.372107982635499" lat="52.002228236493224"/>
            <point xsi:type="esdl:Point" lon="4.3712711334228525" lat="52.0031132980428"/>
            <point xsi:type="esdl:Point" lon="4.366979598999024" lat="52.00197724570447"/>
            <point xsi:type="esdl:Point" lon="4.369254112243653" lat="51.99826505971136"/>
            <point xsi:type="esdl:Point" lon="4.373760223388673" lat="51.99945404958839"/>
            <point xsi:type="esdl:Point" lon="4.3776869773864755" lat="51.995635958872874"/>
            <point xsi:type="esdl:Point" lon="4.380712509155274" lat="51.9963626102222"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="cc38f5f1-7367-4fdf-b124-cdfa19bb9f38">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="7.4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_9d0f" id="9d0fd9ed-662c-42ec-a417-7e789737084c">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_08fd" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="01caa60f-1549-4f3f-817e-e4e6807b2398" name="In" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="ddd73fb0-d96f-4127-8d39-869455c77930" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand4_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" name="Out" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="0a865195-7966-48fc-a132-bc4f9d33c5da" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
              <dataSource xsi:type="esdl:DataSource" id="e06d8a52-8951-476f-b300-1a572409ecea" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="0f851c8b-a41e-469d-98b9-5445fdf28378" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
              <dataSource xsi:type="esdl:DataSource" id="493cb416-6f18-401c-a4b7-e54534b87e14" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="26aba0b6-a1a0-4610-97b3-be763548c669">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3b93383a-2ec4-4b35-9335-ebd91f0de600">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="318840e0-6f48-46f4-b9c9-91315d7b45fd" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.3692970275878915" lat="51.99817258139733"/>
            <point xsi:type="esdl:Point" lon="4.373695850372315" lat="51.99932194116153"/>
            <point xsi:type="esdl:Point" lon="4.376678466796876" lat="51.99534529503086"/>
            <point xsi:type="esdl:Point" lon="4.38081979751587" lat="51.99624370444482"/>
            <point xsi:type="esdl:Point" lon="4.381613731384278" lat="51.99490929572965"/>
            <point xsi:type="esdl:Point" lon="4.372708797454835" lat="51.99272923553559"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="803e9630-d2f6-4034-8e75-19fef89da1d1">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="7.4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_a58a" id="a58a988c-95c1-492b-bc63-b125d25f5108">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_8fbe" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" name="In" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="5ae97047-619a-4119-84f3-848b36743e5d" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand3_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" name="Out" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="85dbdd39-1321-4362-8903-8eaafb1a32bb" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="19ec8807-5009-46c4-ada5-7e1e93cecaaf"/>
              <dataSource xsi:type="esdl:DataSource" id="573955fe-f64c-47d5-96f1-c09981f0a7b9" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="3ffc43d5-143e-4dc7-b25a-ae8fe46abd43" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" profileType="OUTPUT" configuration="33e4bd7b-b488-44ed-bb11-385769af0824">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6584bd2c-3151-4b83-9cde-16bf2402c158"/>
              <dataSource xsi:type="esdl:DataSource" id="b81d9379-ad32-4287-b7bc-970a5508c10c" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3971c64d-50e4-47ec-a769-1f91935065d9">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b18cdc99-6303-404c-958a-1a4c079f842d" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.372987747192384" lat="51.992279997820766"/>
            <point xsi:type="esdl:Point" lon="4.382214546203614" lat="51.994235470276436"/>
            <point xsi:type="esdl:Point" lon="4.38581943511963" lat="51.989333415199866"/>
            <point xsi:type="esdl:Point" lon="4.37633514404297" lat="51.98688879367896"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="a8c0bec3-88dd-40cd-8a11-503890a0822c">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="6.6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="514858db-d641-426d-b7ed-031a65563e09">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="2593118.2473333334"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="6820966.574093999"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="77793547.42"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="204628997.22281995"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="433333.3333333332"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="2159784.914"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="2127504.777293999"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="4693461.7968"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="12999999.999999996"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="64793547.42"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="63825143.31881998"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="140803853.90399998"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="21733654.491999995"/>
            <stringItem xsi:type="esdl:StringItem" label="Pipe" value="8059892.927999999"/>
            <stringItem xsi:type="esdl:StringItem" label="HeatingDemand" value="48000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="6820966.574093999"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="204628997.22281998"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_72d7" value="21275047772.94"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_76a7: Asset cost breakdown">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_9d0f: Asset cost breakdown">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_a58a: Asset cost breakdown">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
      </KPIs>
    </area>
  </instance>
</esdl:EnergySystem>
