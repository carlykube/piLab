<?php

require "php/setup.php";

if($user->logged) {
	header("Location: home.php");
	die("Redirecting to index.php");
}

$Translator->assignAllVariables();

$smarty->display('login.tpl');

?>
