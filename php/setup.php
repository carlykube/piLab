<?php
	function autoloader($class) {
		include 'classes/'.$class.'.class.php';
	}
	spl_autoload_register('autoloader');

	require "./translations/".basename($_SERVER['SCRIPT_NAME'],'.php');
	$Translator = new Translator("en");
	
	echo $Translator->getText("username");
?>
