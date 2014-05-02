<?php

require "php/setup.php";

if ($acct->logged){
	$smarty->assign('name', $user->getName());
	$smarty->assign('contacts', $user->getContacts());	
}

$Translator->assignAllVariables();

$smarty->display('contacts.tpl');

?>