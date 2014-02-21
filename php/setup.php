<?php
	function autoloader($class) {
<<<<<<< HEAD
		include_once 'classes/'.$class.'.class.php';
=======
		include_once '/php/classes/'.$class.'.class.php';
>>>>>>> e3ba2e38bf4f3fdad6049af7396eb85d1677d3c2
	}
	spl_autoload_register('autoloader');

	include_once "/translations/".basename($_SERVER['SCRIPT_NAME'],'.php');
	$Translator = new Translator("en"); //'en' for English; 'es' for Spanish

	require "/libs/Smarty.class.php";
	$smarty = new Smarty;
?>
