<?php

require "php/setup.php";

if ($acct->logged){
	$unreadLetters = $user->getUnreadLetters();

	// Get sender name and add to letter array
	$sender = new User();
	foreach ($unreadLetters as $key => $value) {
		$sender->fillWithID($value['UserFrom']);
		$unreadLetters[$key]['SenderName'] = $sender->getName();
		$unreadLetters[$key]['SenderHtown'] = $sender->getHtown();
	}

	$smarty->assign('unreadLetters', $unreadLetters);
	$smarty->assign('name', $user->getName());
	$smarty->assign('contacts', $user->getContacts());	
}

$Translator->assignAllVariables();

$smarty->display('index.tpl');

?>
