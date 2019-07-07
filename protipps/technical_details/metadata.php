<?php
/**
 * Modul: technical_details
 * Web: https://www.programmier-tipps.de
 * Mail: kontakt@programmier-tipps.de
 * (c) 2019 by programmier-tipps.de
 */

/**
 * Metadata version
 */
$sMetadataVersion = '2.0';

/**
 * Module information
 */
$aModule = [
    'id'          => 'technical_details',
    'title'       => [
        'de' => '.PROTIPPS | Technische Details',
        'en' => '.PROTIPPS | Technical details',
    ],
    'description' => [
        'de' => 'Artikel um technische Details erweitern',
        'en' => 'Expand articles with technical details',
    ],
    'thumbnail'     => 'out/admin/src/img/pt-logo.svg',
    'version'       => '1.0.0',
    'author'        => 'Programmier Tipps',
    'url'           => 'https://www.programmier-tipps.de/',
    'email'         => 'kontakt@programmier-tipps.de',
    'extend'        => array(),
    'controllers'         => array(
        'protippstechnicaldetails'		        => \ProTipps\TechnicalDetails\Application\Controller\Admin\TechnicalDetails::class
    ),
    'blocks' => array(
        array(
            'template'  => 'page/details/inc/tabs.tpl',
            'block'     => 'details_tabs_longdescription',
            'file'      => 'out/blocks/page/details/inc/tabs_technical_details.tpl'
        ),
    ),
    'templates'     => array(
        'article_technical_details.tpl'         => 'protipps/technical_details/Application/views/admin/tpl/article_technical_details.tpl'
    ),
    'events'        => array(
        'onActivate'                            => '\ProTipps\TechnicalDetails\Core\Events\TechnicalDetailEvent::onActivate',
        'onDeactivate'                          => '\ProTipps\TechnicalDetails\Core\Events\TechnicalDetailEvent::onDeactivate'
    ),
    'settings'      => array(),
];