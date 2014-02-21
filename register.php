<?php

require "php/setup.php";

$smarty->assign("firstname",$Translator->getText("firstname"));
$smarty->assign("lastname", $Translator->getText("lastname"));
$smarty->assign("username",$Translator->getText("username"));
$smarty->assign("password", $Translator->getText("password"));
$smarty->assign("gender",$Translator->getText("gender"));
$smarty->assign("hometown", $Translator->getText("hometown"));
$smarty->assign("submit", $Translator->getText("submit"));

$smarty->display('register.tpl');

?>
