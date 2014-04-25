<?php

	require "php/setup.php";

	if (isset($_POST['contactID'])){
		$user->addContact($_POST['contactID']);
	}

	if(!$acct->logged) {
		header("Location: login.php");
		die("Need to login before searching!");
	}
	
	$Translator->assignAllVariables();

	$query = $_GET['query'];
	$results = Account::searchUsers($query);

	$smarty->assign('results', $results);
	$smarty->assign('query', $query);

	

	$smarty->display('search.tpl');

?>