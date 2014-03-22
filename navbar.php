<?php

require "php/setup.php";

if(isset($_GET['navbar'])) {
	$smarty->assign("navbar",$_GET['navbar']);
	
	$Translator->assignAllVariables();

	$smarty->display('navbar.tpl');
} else {
	$smarty->assign("Home", $Translator->getText('home'));
	$smarty->assign("About", $Translator->getText('about'));
	$smarty->assign("Login", $Translator->getText('login'));
	$smarty->assign("Register", $Translator->getText('register'));
	$smarty->display('navbar.tpl');
}

?>