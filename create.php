<?php

require "php/setup.php";

$Translator->assignAllVariables();

if (isset($_POST['message'])){
	$msg = $_POST['message'];
	Letter::send($user->getID(), 19, $msg);
}

$smarty->display('create.tpl');

?>
