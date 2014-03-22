<?php

require "php/setup.php";

if($user->logged) {
	header("Location: index.php");
	die("Redirecting to index.php");
}

$Translator->assignAllVariables();

$smarty->display('login.tpl');

?>
