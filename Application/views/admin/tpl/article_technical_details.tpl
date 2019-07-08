[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]
<script type="text/javascript">
    <!--
    function editThis( sID )
    {
        var oTransfer = top.basefrm.edit.document.getElementById( "transfer" );
        oTransfer.oxid.value = sID;
        oTransfer.cl.value = top.basefrm.list.sDefClass;

        //forcing edit frame to reload after submit
        top.forceReloadingEditFrame();

        var oSearch = top.basefrm.list.document.getElementById( "search" );
        oSearch.oxid.value = sID;
        oSearch.actedit.value = 0;
        oSearch.submit();
    }
    [{if !$oxparentid}]
    window.onload = function ()
    {
        [{if $updatelist == 1}]
        top.oxid.admin.updateList('[{$oxid}]');
        [{/if}]
        var oField = top.oxid.admin.getLockTarget();
        oField.onchange = oField.onkeyup = oField.onmouseout = top.oxid.admin.unlockSave;
    }
        [{/if}]
    //-->
</script>

[{if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
[{else}]
    [{assign var="readonly" value=""}]
[{/if}]

<form name="transfer" id="transfer" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="oxidCopy" value="[{$oxid}]">
    <input type="hidden" name="cl" value="protippstechnicaldetails">
    <input type="hidden" name="editlanguage" value="[{$editlanguage}]">
</form>

<form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post" onSubmit="return chkInsert()" style="padding: 0px;margin: 0px;height:0px;">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="protippstechnicaldetails">
    <input type="hidden" name="fnc" value="">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="voxid" value="[{$oxid}]">
    <input type="hidden" name="oxparentid" value="[{$oxparentid}]">
    <input type="hidden" name="editval[oxarticles__oxid]" value="[{$oxid}]">

    <table class="technische-details" cellspacing="0" cellpadding="0" border="0" style="width:98%;">
        <tr>
            <td valign="top" width="48%">
                <table cellspacing="0" cellpadding="0" border="0">
                    <tr>
                        <td class="edittext">
                            <label>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_MATERIAL"}]</label>
                            <input type="text" class="editinput" size="32" name="editval[oxarticles__ptmaterial]" value="[{$edit->oxarticles__ptmaterial->value}]">
                        </td>
                    </tr>
                    <tr>
                        <td class="edittext">
                            <label>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_POWER"}]</label>
                            <input type="text" class="editinput" size="32" name="editval[oxarticles__ptpower]" value="[{$edit->oxarticles__ptpower->value}]">
                        </td>
                    </tr>
                    <tr>
                        <td class="edittext">
                            <label>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_POWER_SUPPLY"}]</label>
                            <input type="text" class="editinput" size="32" name="editval[oxarticles__ptpowersupply]" value="[{$edit->oxarticles__ptpowersupply->value}]">
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top" width="48%">
                <table cellspacing="0" cellpadding="0" border="0">
                    <tr>
                        <td class="edittext">
                            <label>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_BATTERY_OPERATION"}]</label>
                            <input type="text" class="editinput" size="32" name="editval[oxarticles__ptbattery]" value="[{$edit->oxarticles__ptbattery->value}]">
                        </td>
                    </tr>
                    <tr>
                        <td class="edittext">
                            <label>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_BATTERY_QUANTITY"}]</label>
                            <input type="text" class="editinput" size="32" name="editval[oxarticles__ptbatteryquantity]" value="[{$edit->oxarticles__ptbatteryquantity->value}]">
                        </td>
                    </tr>
                    <tr>
                        <td class="edittext">
                            <label>[{oxmultilang ident="PROTIPPS_TECHNICAL_DETAILS_BATTERY_TYPE"}]</label>
                            <input type="text" class="editinput" size="32" name="editval[oxarticles__ptbatterytype]" value="[{$edit->oxarticles__ptbatterytype->value}]">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="edittext" colspan="2"><br><br>
                <input type="submit" class="edittext" id="oLockButton" name="saveArticle" value="[{oxmultilang ident="ARTICLE_MAIN_SAVE"}]" onClick="Javascript:document.myedit.fnc.value='save'" [{if !$edit->oxarticles__oxtitle->value && !$oxparentid}]disabled[{/if}] [{$readonly}]>
            </td>
        </tr>
    </table>
</form>

[{include file="bottomnaviitem.tpl"}]
[{include file="bottomitem.tpl"}]
