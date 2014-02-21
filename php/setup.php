<?php
	session_start();

	error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);

	require('core.php');

	function autoloader($class) {
<<<<<<< HEAD
		include_once './php/classes/'.$class.'.class.php';
=======
<<<<<<< HEAD
		include_once 'classes/'.$class.'.class.php';
=======
		include_once '/php/classes/'.$class.'.class.php';
>>>>>>> e3ba2e38bf4f3fdad6049af7396eb85d1677d3c2
>>>>>>> b768810f77ec4db9ae0615a96141161bb7fae6e6
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
