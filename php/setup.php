<?php
	function autoloader($class) {
		include_once './classes/'.$class.'.class.php';
	}
	spl_autoload_register('autoloader');

	include_once "./translations/".basename($_SERVER['SCRIPT_NAME'],'.php');
	$Translator = new Translator("en"); //'en' for English; 'es' for Spanish

	require "./libs/Smarty.class.php";
	$smarty = new Smarty;
?>
