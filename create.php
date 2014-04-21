<?php

	require "php/setup.php";

	$Translator->assignAllVariables();

	if (isset($_POST['message'])){
		$msg = $_POST['message'];
		Letter::send($user->getID(), $_POST['letterTo'], $msg);
	}

	$smarty->assign('letterTo', $_GET['letterTo']);
	$smarty->display('create.tpl');

?>
