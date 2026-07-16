<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="PoC Tutorial_grow_optimizer_default" id="564b53c6-9dc2-4bd1-9fac-3279f07fdd30" description="" esdlVersion="v2207" version="6">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Primary" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" returnTemperature="40.0" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Primary_ret"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA" unit="WATT"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND" id="8718c77e-66a6-4145-956c-18c1115091bd"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="32f0839f-3a54-4142-9e08-67ef21855f86"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND" id="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
    </quantityAndUnits>
    <dataconfigurations xsi:type="esdl:DataConfigurations" id="71590f0e-4097-44fd-ae67-df1cc68452a4">
      <configurations xsi:type="esdl:DatabaseConfiguration" id="50f2c091-6288-4cb3-ac61-14e9c2c46c33" database="564b53c6-9dc2-4bd1-9fac-3279f07fdd30" type="POSTGRESQL" host="omotes_postgres" port="6432"/>
    </dataconfigurations>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a" name="Untitled area">
      <asset xsi:type="esdl:ResidualHeatSource" power="4072080.0390748093" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.00467202060717" lon="4.372987747192384"/>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" name="Out" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="0a20434e-8a86-4fbc-bb23-eed02a81c48f" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="6bd68871-1396-4525-920c-05edcb7fa6b9" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="1409b014-7891-4098-9e2c-ff27d14b14b0" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="fbfeb8d7-469d-48b2-a787-4a1a822e5bf0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe1" length="818.07" id="Pipe1" innerDiameter="0.3938" outerDiameter="0.56" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.00467202060717" lon="4.372987747192384"/>
          <point xsi:type="esdl:Point" lat="52.00210934629504" lon="4.365863800048829"/>
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" name="In" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" name="Out" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="450c4eaf-fd89-469f-9e9f-6c72b1e515b2" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="7d5d00c6-fefc-4ca0-b7b9-7e14e65ae702" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="04cfe2c4-7a56-48f9-a146-99c1ded7e168" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="621794ee-4695-430a-a62e-a3ba00ff9555" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="84417c54-7027-42dc-880d-5ab4616ec7a5" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="06bc480a-e52b-4568-af24-b44678443758" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
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
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c" id="a04cb927-426d-4016-a084-356002a85d6c">
        <geometry xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
        <port xsi:type="esdl:InPort" id="d149871b-d76a-4cc3-8922-c8d99205f47e" name="In" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="3535f436-1270-4b1b-a326-41d69cd6e330" name="Out" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe2" length="517.54" id="Pipe2" innerDiameter="0.3938" outerDiameter="0.56" related="Pipe2_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" name="Out" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="0e06139d-5271-4f99-83b9-22dd87146e95" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="aba2ed77-dc5a-4203-ba90-d23af729936b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="99a1a494-1f84-4813-b83c-9ea168816f87" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="ec58b5a7-01bf-4ffa-8497-b7f48c8c1fae" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="6d0cf8d4-aed6-49f5-9e22-2dc7406e478f" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="f7053218-6278-499e-aded-7c27305678ec" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
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
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe3" length="1182.23" id="Pipe3" innerDiameter="0.3938" outerDiameter="0.56" related="Pipe3_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
          <point xsi:type="esdl:Point" lat="51.989029496545015" lon="4.373888969421388"/>
          <point xsi:type="esdl:Point" lat="51.99069441691871" lon="4.379038810729981"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="e44060e9-8b0e-41e5-ae46-ce074c891c15" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="13edd58c-4a04-4770-8aac-c6e8689acbba" name="Out" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="15f4e19b-c5c5-4db6-9eed-08d929ddf787" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="da1c016b-58ad-4939-99bb-055d9234f207" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="64e15e16-e53c-4d0f-923b-4f5bbd171061" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="aae59606-4307-4bb1-8fd6-1594900242b6" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="a360c65b-e31c-471f-84af-fc66a228f051" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="19a09228-bee7-4797-b2dc-57d1f5fcd384" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
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
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca" id="95caf7c7-e89f-4378-96f2-f904f9255c83">
        <geometry xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
        <port xsi:type="esdl:InPort" id="4d629e6e-5db4-4a8f-9945-934a24ede11a" name="In" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="a42acf83-361d-4d4d-8001-8617daad939a" name="Out" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe4" length="455.4" id="Pipe4" outerDiameter="0.45" innerDiameter="0.3127" related="Pipe4_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
          <point xsi:type="esdl:Point" lat="52.00105253065436" lon="4.373545646667481"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="5169316d-ae93-4f04-9a34-7c776444b651" name="Out" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="0da7b341-36c1-4abf-8ce6-1df637b6c9f4" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="e431bc69-2a12-4037-bda8-13c70fee7552" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="becb14a0-c0a4-46d1-92bc-b8232a5e9902" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="b1860456-c597-46fa-947c-79f8beb45e58" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="2258d1ef-88c1-42dd-9704-b219f89f41fd" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="7606cec7-7090-4118-ae71-28a96933668f" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
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
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe5" length="252.3" id="Pipe5" outerDiameter="0.45" innerDiameter="0.3127" related="Pipe5_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
          <point xsi:type="esdl:Point" lat="51.99648151568376" lon="4.373245239257813"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="20165ec3-cf86-41e4-976f-079ba0ca5be4" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" name="Out" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="e7b10691-442c-4c3b-9128-fb58f802af6e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="49d7200f-a839-43f2-b959-7144da577188" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="9833a002-2405-4836-9ddc-264013748bef" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="ff227c6b-c8c0-47ae-8c51-1cf74c4d6485" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="adaa605d-7075-4b13-a8e7-05a23beecb8d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="90370d26-2779-4f6a-9808-ed34bc18c38e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
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
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c_ret" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.000059268817886" lon="4.3663488762941665"/>
        <port xsi:type="esdl:InPort" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" name="ret_port" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="044ef084-2a9e-4356-bac2-207f5361d4ce" name="ret_port" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca_ret" id="b4a5be45-3352-4837-94d6-b110aa842da6">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.99571274701101" lon="4.369031429215318"/>
        <port xsi:type="esdl:InPort" id="6b4d9bba-484b-46aa-bfe6-895d491b6747" name="ret_port" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="5a47482f-6cdf-41b3-91b0-014578ee8143" name="ret_port" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe1_ret" length="818.07" outerDiameter="0.56" innerDiameter="0.3938" id="Pipe1_ret" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.000059268817886" lon="4.3663488762941665"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.00219934638504" lon="4.365092860885141"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.004762020697164" lon="4.372228431895539"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="2c3c73cb-d282-4c97-a060-922c91c50180" name="In_ret" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="c0a27794-98e2-4119-a363-cec4f0b525cd" name="Out_ret" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="e052efaf-a445-4345-98c2-77c7d98bcaae" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="e78ba11d-e5c1-4e03-8a66-1a934c0ca0a3" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="8929e06e-942e-4144-b4ee-4ad7d379fb5a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="d012eb68-e9ac-4e90-88bd-f98396022b44" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="8e348cc4-9157-46af-94ed-e10c452a7f40" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="5b43e688-4d74-48bd-ba3a-12ebf3c9cc4e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe2_ret" length="517.54" outerDiameter="0.56" innerDiameter="0.3938" id="Pipe2_ret" related="Pipe2">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.99571274701101" lon="4.369031429215318"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.000059268817886" lon="4.3663488762941665"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="da70a1aa-53c4-496e-ba63-2c04674b8c84" name="In_ret" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="c5df4e61-6603-4315-a45a-196903690d9e" name="Out_ret" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="85cd80ea-e90c-4cfa-86de-d49a51d98f04" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="5cdfb994-5afc-4005-9100-a26601420423" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="f7a949ef-1c68-4015-832d-bddc47afd664" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="cf2d281e-f42a-47d9-bd58-b6a7f7fda44c" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="5d077bc0-7cf6-4efa-af3c-1d4c1d98ef29" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="1f3427e6-f0bc-4019-aad6-79f5fc6d87ab" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe3_ret" length="1182.23" outerDiameter="0.56" innerDiameter="0.3938" id="Pipe3_ret" related="Pipe3">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.990784417008705" lon="4.378211386257638"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.98911949663501" lon="4.37305259776345"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.99571274701101" lon="4.369031429215318"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8" name="In_ret" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="59b53a77-a253-4a96-81ef-84e719a1f518" name="Out_ret" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="2dd9e9b3-d2cb-4f64-98a1-6da93e513d62" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="46cfdb48-7526-4c94-8dcb-88392504da5f" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="330a2770-fe03-4a31-898a-ad8574afe515" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="ad491514-7a1f-4bff-a9f4-5c6875ea0e67" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="3db602f4-38bd-4903-908b-7b4af486c387" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="971f51ba-6aea-4a77-b322-a6015de068bf" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe4_ret" length="455.4" outerDiameter="0.45" innerDiameter="0.3127" id="Pipe4_ret" related="Pipe4">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.00114253074436" lon="4.372769808163894"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.000059268817886" lon="4.3663488762941665"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="5e2f4591-43f2-489f-8eb2-63105dbd0355" name="In_ret" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" name="Out_ret" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="f6960a32-8ce3-4d93-bc39-743bff6b8b9a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="cf7264a2-1376-44fc-817a-c1e55abe54f3" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="8bc2b681-8327-47b5-9081-6fc6986de0be" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="319ababc-f69f-4bc1-bd67-412e5f3ae01a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="bf0d7eb9-a371-4a98-9db5-372ee383b65a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="31dd7f25-f3ea-4a56-9683-1f5ae5ccad86" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe5_ret" length="252.3" outerDiameter="0.45" innerDiameter="0.3127" id="Pipe5_ret" related="Pipe5">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.99657151577376" lon="4.372447461880088"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.99571274701101" lon="4.369031429215318"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="35ddd90a-e45c-4afd-95b4-80ce6c927071" name="In_ret" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" name="Out_ret" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="574ac31b-4609-4e52-b2ee-6f3ea905d3e5" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
            <dataSource xsi:type="esdl:DataSource" id="45cc4f5e-cc5a-4dac-8895-fc22141d6ae5" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="6b40f4a5-1177-4935-8011-3b22bdcc2eef" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
            <dataSource xsi:type="esdl:DataSource" id="11cbdad9-0cf2-4f4d-bb43-465bab275c67" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="1a0813c6-c317-4afb-b650-a256aac402a6" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5_ret'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="3eb7945a-986b-42bb-ba2a-3ca1aa6003ac"/>
            <dataSource xsi:type="esdl:DataSource" id="8bedb873-3d0e-47ba-986b-fceac9ef5575" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_b0ff" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0">
          <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.00105253065436" lon="4.373545646667481"/>
          <port xsi:type="esdl:InPort" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" name="In" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand4_MW" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" name="Out" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="043bff1e-f2df-4047-a65d-30f51236f063" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
              <dataSource xsi:type="esdl:DataSource" id="273917e6-1601-42ca-bb6d-15d393714c8e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="188454f0-f224-4914-b052-b02f1b7531d3" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
              <dataSource xsi:type="esdl:DataSource" id="ab39dc77-1543-45a1-a99d-d6f2efae65b1" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
            <point xsi:type="esdl:Point" lat="52.003232185574326" lon="4.376142024993897"/>
            <point xsi:type="esdl:Point" lat="52.002228236493224" lon="4.372107982635499"/>
            <point xsi:type="esdl:Point" lat="52.0031132980428" lon="4.3712711334228525"/>
            <point xsi:type="esdl:Point" lat="52.00197724570447" lon="4.366979598999024"/>
            <point xsi:type="esdl:Point" lat="51.99826505971136" lon="4.369254112243653"/>
            <point xsi:type="esdl:Point" lat="51.99945404958839" lon="4.373760223388673"/>
            <point xsi:type="esdl:Point" lat="51.995635958872874" lon="4.3776869773864755"/>
            <point xsi:type="esdl:Point" lat="51.9963626102222" lon="4.380712509155274"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="5c3092ba-78ed-45c6-8862-554fd787bcad">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="3.7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_9d0f" id="9d0fd9ed-662c-42ec-a417-7e789737084c">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_08fd" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0">
          <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.99648151568376" lon="4.373245239257813"/>
          <port xsi:type="esdl:InPort" id="01caa60f-1549-4f3f-817e-e4e6807b2398" name="In" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="ddd73fb0-d96f-4127-8d39-869455c77930" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand4_MW" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" name="Out" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="ed79cf51-1ca8-4e30-9342-e8e1f309a05b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
              <dataSource xsi:type="esdl:DataSource" id="306014fa-1917-4b47-9b56-1ef9c37da893" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="6339cb38-5407-4766-ba07-b484d600ce20" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
              <dataSource xsi:type="esdl:DataSource" id="2e380eef-cff1-415d-9b9e-3b4909704629" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
            <point xsi:type="esdl:Point" lat="51.99817258139733" lon="4.3692970275878915"/>
            <point xsi:type="esdl:Point" lat="51.99932194116153" lon="4.373695850372315"/>
            <point xsi:type="esdl:Point" lat="51.99534529503086" lon="4.376678466796876"/>
            <point xsi:type="esdl:Point" lat="51.99624370444482" lon="4.38081979751587"/>
            <point xsi:type="esdl:Point" lat="51.99490929572965" lon="4.381613731384278"/>
            <point xsi:type="esdl:Point" lat="51.99272923553559" lon="4.372708797454835"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="27e9d231-9e20-4f21-b45b-db9c8d6e07d1">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="3.7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_a58a" id="a58a988c-95c1-492b-bc63-b125d25f5108">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_8fbe" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0">
          <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.99069441691871" lon="4.379038810729981"/>
          <port xsi:type="esdl:InPort" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" name="In" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="5ae97047-619a-4119-84f3-848b36743e5d" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand3_MW" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" name="Out" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="c7e785f4-2a69-407b-a86e-1889cb658407" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8718c77e-66a6-4145-956c-18c1115091bd"/>
              <dataSource xsi:type="esdl:DataSource" id="cd2ee51c-a83a-4957-8407-d53e4abbf977" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="9fcf30b1-4ede-4654-a26a-d34c9ddc6c51" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" profileType="OUTPUT" configuration="50f2c091-6288-4cb3-ac61-14e9c2c46c33">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="32f0839f-3a54-4142-9e08-67ef21855f86"/>
              <dataSource xsi:type="esdl:DataSource" id="6caabd54-de69-4dc7-87ff-31c614a998e8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
            <point xsi:type="esdl:Point" lat="51.992279997820766" lon="4.372987747192384"/>
            <point xsi:type="esdl:Point" lat="51.994235470276436" lon="4.382214546203614"/>
            <point xsi:type="esdl:Point" lat="51.989333415199866" lon="4.38581943511963"/>
            <point xsi:type="esdl:Point" lat="51.98688879367896" lon="4.37633514404297"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="d1194288-7ba0-4414-b859-a67d7858a51f">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="3.3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="c26c5ccc-f13b-4d9f-a0cb-d7e36630709a">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="2421629.1510870736"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="3647915.4146574186"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="72648874.5326122"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="109437462.43972255"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="433333.3333333333"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="1988295.8177537404"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="1204667.391212533"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="2443248.0234448854"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="13000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="59648874.53261221"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="36140021.73637599"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="73297440.70334657"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="16108120.058612213"/>
            <stringItem xsi:type="esdl:StringItem" label="Pipe" value="8540754.474"/>
            <stringItem xsi:type="esdl:StringItem" label="HeatingDemand" value="48000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="3647915.4146574186"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="109437462.43972255"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_72d7" value="12046673912.12533"/>
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
