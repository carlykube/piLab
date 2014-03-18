<?php
require "php/setup.php";

$smarty->assign('unreadLetters', $user->getUnreadLetters());
$smarty->assign('name', $user->getName());

$smarty->display('home.tpl');


?>