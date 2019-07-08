<?php
/**
 * Modul: technical_details
 * Web: https://www.programmier-tipps.de
 * Mail: kontakt@programmier-tipps.de
 * (c) 2019 by programmier-tipps.de
 */
 
namespace ProTipps\TechnicalDetails\Core\Events;

class TechnicalDetailEvent {

    public static function onActivate() {
        $oDb = \OxidEsales\Eshop\Core\DatabaseProvider::getDb();
        $oDb->Execute("ALTER TABLE `oxarticles`
			ADD COLUMN `ptmaterial` VARCHAR(40) NOT NULL AFTER `OXSHOWCUSTOMAGREEMENT`,
          	ADD COLUMN `ptpower` varchar(40) NOT NULL AFTER `ptmaterial`,
          	ADD COLUMN `ptpowersupply` varchar(40) NOT NULL AFTER `ptpower`,
          	ADD COLUMN `ptbattery` varchar(40) NOT NULL AFTER `ptpowersupply`,
          	ADD COLUMN `ptbatteryquantity` varchar(40) NOT NULL AFTER `ptbattery`,
          	ADD COLUMN `ptbatterytype` varchar(40) NOT NULL AFTER `ptbatteryquantity`;"
		);
		
		$oMetaData = oxNew(DbMetaDataHandler::class);
        $oMetaData->updateViews();
    }

    public static function onDeactivate() {

    }
	
}
