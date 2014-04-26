<?php

	require "php/setup.php";

	$Translator->assignAllVariables();

	if (isset($_POST['message'])){
		$msg = $_POST['message'];
		Letter::send($user->getID(), $_POST['letterTo'], $msg);
	}

	$recipient = new User();
	$recipient->fillWithID($_GET['letterTo']);
	date_default_timezone_set("America/Chicago");
	$date = getdate();
	$date = $date['month']. " " .$date['mday']. ", " .$date['year'];

	$smarty->assign('letterTo', $_GET['letterTo']);
	$smarty->assign('date', $date);
	$smarty->assign('recipient', $recipient->getName());
	$smarty->assign('sender', $user->getName());
	$smarty->display('create.tpl');

?>
