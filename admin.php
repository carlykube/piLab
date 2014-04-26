<?php

require "php/setup.php";

$smarty->assign('allUsers', User::getAllUsers());

$Translator->assignAllVariables();

$smarty->display('admin.tpl');

?>