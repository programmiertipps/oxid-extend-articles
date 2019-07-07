<?php
/**
 * Modul: technical_details
 * Web: https://www.programmier-tipps.de
 * Mail: kontakt@programmier-tipps.de
 * (c) 2019 by programmier-tipps.de
 */

namespace ProTipps\TechnicalDetails\Application\Controller\Admin;

class TechnicalDetails extends \OxidEsales\Eshop\Application\Controller\Admin\AdminDetailsController {

    public function render() {
        parent::render();
        $this->_aViewData['edit'] = $article = oxNew(\OxidEsales\Eshop\Application\Model\Article::class);
        $oxId = $this->getEditObjectId();
        if (isset($oxId) && $oxId != "-1") {
            $article->loadInLang($this->_iEditLang, $oxId);
        }
        return "article_technical_details.tpl";
    }

    public function save() {
        $soxId = $this->getEditObjectId();
        $aParams = \OxidEsales\Eshop\Core\Registry::getConfig()->getRequestParameter("editval");

        $oArticle = oxNew(\OxidEsales\Eshop\Application\Model\Article::class);
        $oArticle->loadInLang($this->_iEditLang, $soxId);
        $oArticle->setLanguage(0);
        $oArticle->assign($aParams);
        $oArticle->setLanguage($this->_iEditLang);
        $oArticle = \OxidEsales\Eshop\Core\Registry::getUtilsFile()->processFiles($oArticle);
        $oArticle->save();

        parent::save();
    }

}