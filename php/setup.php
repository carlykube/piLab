<?php
	//Need to use a session to maintain a user's logged-in state during their visit
	session_start();

	//Show errors for debugging purposes
	error_reporting(E_ERROR | E_PARSE | E_NOTICE);

	//Basic helper functions
	require('core.php');

	//Register classes folder for lazyloading
	function autoloader($class) {
		include_once './php/classes/'.$class.'.class.php';
	}
	spl_autoload_register('autoloader');	

	//Create MySQL connection for database access
	$MySQL = new MySQL();

	//Get account from session if already logged in; else, create a blank account
	if(isset($_SESSION['acct'])) $acct = unserialize($_SESSION['acct']);
	else $acct = new Account();
	
	// Get user from session if already logged in; else, create blank user
	if(isset($_SESSION['user'])) $user = unserialize($_SESSION['user']);
	else $user = new User();
	
	//Initialize Translator for multi-language support
	include_once "./translations/".basename($_SERVER['SCRIPT_NAME'],'.php');
	$Translator = new Translator(); //'en' for English; 'es' for Spanish

	// Post-form routing	
	if(isset($_POST['form'])){
		$form = $_POST['form'];
		if($form =='login')
			$acct->login();
		else if($form == 'register')
			$acct->register();
		else if($form == 'logout')
			$acct->logout();
	}


	//Render the page
	require "./libs/Smarty.class.php";
	$smarty = new Smarty;

	//Define which language links should be displayed depending on the current language
	if (isset($_GET['lang'])) {
		if ($_GET['lang'] =='es') {
			$smarty->assign('languageLinks', '<a href="?lang=en">English</a>');
		} else if ($_GET['lang']=='en') {
			$smarty->assign('languageLinks', '<a href="?lang=es">Español</a>');
		} else {
			$smarty->assign('languageLinks', '<a href="?lang=en">English</a><a href="?lang=es">Español</a>');
		}
	} else {
		if(isset($_COOKIE['lang'])){
			if ($_COOKIE['lang']=='es') {
				$smarty->assign('languageLinks', '<a href="?lang=en">English</a>');
			} elseif ($_COOKIE['lang']=='en') {
				$smarty->assign('languageLinks', '<a href="?lang=es">Español</a>');
			}
		} else {
			$smarty->assign('languageLinks', '<a href="?lang=en">English</a><a href="?lang=es">Español</a>');
		}
	}

	//Assign user role for navbar
	$smarty->assign('role', $user->getRole());

	//This is here because it's used on pretty much every page.
	$smarty->assign('logged', $acct->logged);
?>