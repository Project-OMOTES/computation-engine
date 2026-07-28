<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="PoC Tutorial_SmartControlOptimized_grow_optimizer_default" id="74ba7704-c993-4ad9-84e4-e0a5c189822b" description="" esdlVersion="v2207" version="13">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Primary" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0" name="Primary_ret"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA" unit="WATT"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND" id="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND" id="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
    </quantityAndUnits>
    <dataconfigurations xsi:type="esdl:DataConfigurations" id="b4c52324-57ca-4379-8dcc-373b76989ab3">
      <configurations xsi:type="esdl:DatabaseConfiguration" id="408e287f-c75c-4e5e-996e-41461ead72df" database="74ba7704-c993-4ad9-84e4-e0a5c189822b" type="POSTGRESQL" host="omotes_postgres" port="6432"/>
    </dataconfigurations>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <asset xsi:type="esdl:ResidualHeatSource" power="7975047.97685082" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b">
        <geometry xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" name="Out" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="a835f82a-b8ec-41f1-8722-fd4a58163662" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="59196eba-6734-4fa0-88c9-57041658eeb4" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="dc237f10-a7d0-4281-bb2d-2b1251216396" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="8bb9521a-73cf-452c-b956-18b6da877540" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="3e7a692b-5a82-4651-91ed-5e34536d6980" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="8a2fa369-2fe4-4665-91d0-2d80ee1c8045" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="d53a3912-ce2c-404a-966b-86dc234f7d11" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="ad0d6335-515d-4a7d-9233-762e0bea1871" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="1db1e24a-f343-4c6f-840f-be54d79bff3c" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="e02d3a74-75b2-4c38-acf9-2b379859ef7e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="7fbf75f3-b615-4316-98b5-a85850ac7f23" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="2a788c73-532f-4ba0-8baf-98269b0cb1d4" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="2c86bd4b-f60b-4176-9cf2-a200c90be260" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="eacaf14c-3732-4bb2-8a0d-a0fdbf0d720a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="c1536091-0601-4bab-9371-0beb65591d3d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="2e90ab5e-89be-4d5c-8f98-afced68681ce" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="ff423711-1c3e-4724-a247-d81d3e89e248" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="14fbbdee-4353-4a99-aeb8-c40b694637d8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="af7d4a3a-6d90-4be6-a641-667d7044cb8b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="bf4d5406-48c0-415b-a3f6-7d9dcf2cee07" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="3ca1f0d8-32bf-4c49-b00d-e42fade818b4" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="16043ee0-91de-434f-87b9-fbd9fe09e203" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="180afd08-69e2-4eb1-9dd6-5eee9a8f4936" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="8b432bff-0545-4312-af8f-18fffdd39bb3" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="7a68a4af-5584-42e9-8b22-e172a1518c58" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="58d7a6f0-d47d-417a-8898-54715b6dd3e0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="c7a040ee-dd8a-4431-8bcd-b61402a9eb3b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="f54878e8-2408-4684-a881-f4d37281b3a9" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="18b9ecbc-ea94-4407-b914-4d87abf62ced" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="c87996a0-4492-468e-bbec-177781448640" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="bdc55829-3ae7-4a75-9b7d-d69fff46913e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="dca4548f-2bde-4364-ae03-ab9dd58c6fed" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="d9751039-cddd-4c23-8d03-9ceeebe305c9" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="b34cf71c-8b20-4856-a128-a6296be5f4c8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="cb416bbd-6caf-4cf7-b239-e1a311c1e928" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="7eebbea6-7b90-409e-81b9-9daab8750b82" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="c6c256bb-3c08-4252-b50e-d9071af08517" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="8c0237e8-cbd0-4fce-a6df-453c130d5382" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="2c50ee55-933c-47c2-b048-7eb8d2891ae8" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="e61433bd-329e-418a-bf1e-4a70f64e5cc9" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="89faaed2-ce76-43f8-939b-9afef1271ec0" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="af27e4ba-d7aa-493e-924d-0b3dda89617a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="2d324944-d81d-4c02-8e0f-b07dc6e5876a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="796f2a89-c72e-4786-8aed-1961ff2203ce" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="d5f3f2af-f6e1-4014-b5d4-c05f96960a34" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="c96f41f1-9604-4e82-aa0e-c44cca8a75a4" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="545cdf9e-b10e-4bb2-9de6-fdfb42ab9f92" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="66f44413-fb06-4fb9-bb88-3f7908bf222c" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="2e5ed468-206a-4ed3-9f18-0bce79134f6f" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="5bde5241-6379-469c-95aa-f6de936c524c" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="e901a3bb-b49f-48ce-831d-f922af6340b8" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="1c4b1c4d-2cfc-4158-967d-c084a701571d" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="04a92899-78c2-4460-a02e-e7be7baec73c" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="a18ebe65-046b-4f71-b7a0-e923cd9913d9" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="603e5f2a-3b80-4e59-a23c-9115b0e4d600" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="1fab3ca6-5d53-4dea-aaa7-b01e3b72e727" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="121dd6a2-8d70-41b6-980b-5bbb8124df74" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="e3877862-d73c-494a-bd9e-fd47d6fdffad" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="f2a9cbe6-c38f-4e6c-b42d-9fd00bd8091d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
            <dataSource xsi:type="esdl:DataSource" id="aeef808f-1d8e-4241-ab6f-1f784b5d6ffa" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="474df19a-4f16-4f75-8e9d-c0629a2d157d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
            <dataSource xsi:type="esdl:DataSource" id="565a2150-c72e-4523-9ff7-d0b02211f50b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="7cd98d9e-10fc-450b-8a47-5a442ceea083" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="a193a7d6-f14a-4e26-b784-befdebc6f7ee"/>
            <dataSource xsi:type="esdl:DataSource" id="5e9c1dc3-86e3-417b-9ae0-13448672202d" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
            <profile xsi:type="esdl:DataTableProfile" id="3331d3cf-074e-4b9d-9f9e-9c04ca5b33d4" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
              <dataSource xsi:type="esdl:DataSource" id="b57d7770-32d6-434f-b5d4-6389bc5115f3" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="87df2546-01f0-4b5a-a80f-3112813c1681" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
              <dataSource xsi:type="esdl:DataSource" id="c4b49236-4fd3-470a-9866-c09722847f42" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="b677fb08-9817-435a-bca8-9b3f44c3b7d6">
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
            <profile xsi:type="esdl:DataTableProfile" id="097bb826-a984-48a3-b95f-af5889df457a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
              <dataSource xsi:type="esdl:DataSource" id="0189141f-36dc-4f65-b27a-9572d9344844" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="c63666e2-211e-428a-ba64-3b65ccf73843" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
              <dataSource xsi:type="esdl:DataSource" id="ade1ae48-cc42-4f6a-abca-e9c1b3650637" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="422185b1-c61a-4f5a-9695-f0c2004eb781">
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
            <profile xsi:type="esdl:DataTableProfile" id="4723bc3b-f9f8-4085-b9f3-08da61e6974b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="7d54b2e2-918c-49b9-a9c0-f7de2d4d5339"/>
              <dataSource xsi:type="esdl:DataSource" id="657c621d-e46f-4fa0-ad39-787321d55b2c" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="83fab7d0-8671-494a-8953-ad4c42eb9823" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" profileType="OUTPUT" configuration="408e287f-c75c-4e5e-996e-41461ead72df">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2c5d7e70-65ed-40e0-89d7-802bf82e161f"/>
              <dataSource xsi:type="esdl:DataSource" id="3cb9b909-ffc7-4e1c-aade-deb671dc2ce8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="48f6f75d-7b4a-4fd9-a395-418a21e1b604">
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
      <KPIs xsi:type="esdl:KPIs" id="eee044b2-2ff2-458f-9d74-ccddd0544b4c">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="2600748.8297758745"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="7046221.367797811"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="78022464.89327623"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="211386641.03393432"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="433333.3333333333"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="2167415.496442541"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="2261192.581687318"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="4785028.786110492"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="13000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="65022464.89327623"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="67835777.45061955"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="143550863.58331478"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="21962571.96527623"/>
            <stringItem xsi:type="esdl:StringItem" label="Pipe" value="8059892.928000001"/>
            <stringItem xsi:type="esdl:StringItem" label="HeatingDemand" value="48000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="7046221.367797811"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="211386641.03393432"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_72d7" value="22611925816.873188"/>
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
