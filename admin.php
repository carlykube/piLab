<?php

require "php/setup.php";

if(!($GLOBALS['user']->getRole() == 'admin')) {
	header("Location: index.php");
	errorMessage('You must be an admin to do that.');
	die();
}

if(isset($_GET['loginas'])) {
	$loginID = $_GET['loginas'];
	$acct->loginAsUser($loginID);
}

$smarty->assign('allUsers', User::getAllUsers());

$Translator->assignAllVariables();

$smarty->display('admin.tpl');

?>