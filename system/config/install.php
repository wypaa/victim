<?php
// Site
$_['site_base']         = substr(HTTPS_SERVER, 8);
$_['site_ssl']          = true;

// Language 
$_['language_default']  = 'ru-ru';
$_['language_autoload'] = array('ru-ru');

// Actions
$_['action_default']    = 'install/step_1';
$_['action_router']     = 'startup/router';
$_['action_error']      = 'error/not_found';
$_['action_pre_action'] = array(
	'startup/language',
	'startup/upgrade',
	'startup/database'
);