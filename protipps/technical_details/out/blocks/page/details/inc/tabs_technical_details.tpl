[{$smarty.block.parent}]

[{capture append="tabs"}]<a href="#technische-details" data-toggle="tab">[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS"}]</a>[{/capture}]
[{capture append="tabsContent"}]
    <div id="technische-details" class="tab-pane[{if $blFirstTab}] active[{/if}]">
        <h2>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS"}]:</h2>

        <dl>
            <dt>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_MATERIAL"}]</dt>
            <dd>[{$oDetailsProduct->oxarticles__ptmaterial->value}]</dd>

            <dt>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_POWER"}]</dt>
            <dd>[{$oDetailsProduct->oxarticles__ptpower->value}]</dd>

            <dt>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_POWER_SUPPLY"}]</dt>
            <dd>[{$oDetailsProduct->oxarticles__ptpowersupply->value}]</dd>

            <dt>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_BATTERY_OPERATION"}]</dt>
            <dd>[{$oDetailsProduct->oxarticles__ptbattery->value}]</dd>

            <dt>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_BATTERY_QUANTITY"}]</dt>
            <dd>[{$oDetailsProduct->oxarticles__ptbatteryquantity->value}]</dd>

            <dt>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_BATTERY_TYPE"}]</dt>
            <dd>[{$oDetailsProduct->oxarticles__ptbatterytype->value}]</dd>
        </dl>

    </div>
    [{assign var="blFirstTab" value=false}]
[{/capture}]
