<?php

require "php/setup.php";

$smarty->assign("username",$Translator->getText("username"));
$smarty->assign("password", $Translator->getText("password"));
$smarty->assign("submit", $Translator->getText("submit"));

$smarty->display('login.tpl');

?>
