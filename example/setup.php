<?php
	error_reporting(E_ERROR | E_PARSE);
	session_start();

	function autoloader($class) {
		include_once './php/classes/'.$class.'.class.php';
	}
	spl_autoload_register('autoloader');

	if(isset($_GET['logout']) && $_GET['logout'] == 1) unset($_SESSION['Account']);

	$MySQL = new MySQL();
	//$Texter = new Texter();

	if(isset($_SESSION['Account'])) $Account = unserialize($_SESSION['Account']);
	else $Account = new Account();

	if(isset($_POST['form'])) {
		$form = $_POST['form'];
		if($form == "login") $Account->login();
		elseif($form == "register") $Account->register();
		elseif($form == "creategroup") Group::createGroup();
	}

	require "./libs/Smarty.class.php";
	$smarty = new Smarty;

	$smarty->assign("logged",$Account->logged);
	$smarty->assign("username",$Account->username);
?>
