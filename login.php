<?php

require "php/setup.php";

if($user->logged) {
	header("Location: index.php");
	die("Redirecting to index.php");
}

$smarty->assign("username",$Translator->getText("username"));
$smarty->assign("password", $Translator->getText("password"));
$smarty->assign("submit", $Translator->getText("submit"));

$smarty->display('login.tpl');

?>
