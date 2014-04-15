<?php

require "php/setup.php";

if ($acct->logged){
	$smarty->assign('unreadLetters', $user->getUnreadLetters());
	$smarty->assign('name', $user->getName());
}

$Translator->assignAllVariables();

$smarty->display('index.tpl');

?>
