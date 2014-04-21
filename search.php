<?php

	require "php/setup.php";

	$Translator->assignAllVariables();

	$query = $_GET['query'];
	$results = Account::searchUsers($query);

	// If user logged in, remove contacts from results
	if ($acct->logged)
		$results = $user->removeUserContacts($results);

	$smarty->assign('results', $results);
	$smarty->assign('query', $query);

	if (isset($_POST['contactID'])){
		$user->addContact($_POST['contactID']);
	}

	$smarty->display('search.tpl');

?>