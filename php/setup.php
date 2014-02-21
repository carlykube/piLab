<?php
	session_start();

	error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);

	require('core.php');

	function autoloader($class) {
		include_once './php/classes/'.$class.'.class.php';
	}
	spl_autoload_register('autoloader');

	//Set language...
	if(isset($_GET['lang'])) {
		setcookie("lang",$_GET['lang'],time()+(2*365*24*60*60)); // Language cookie expires in 2 years
		$lang = $_GET['lang'];
	} else {
		$lang = $_COOKIE['lang'];
	}


	$MySQL = new MySQL();

	//Account stuff...
	$user = new Account();

	include_once "./translations/".basename($_SERVER['SCRIPT_NAME'],'.php');
	$Translator = new Translator($lang); //'en' for English; 'es' for Spanish

	require "./libs/Smarty.class.php";
	$smarty = new Smarty;
?>
