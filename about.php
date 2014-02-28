<?php

require "php/setup.php";

$smarty->assign("paragraph1",$Translator->getText("paragraph1"));
$smarty->assign("paragraph2",$Translator->getText("paragraph2"));
$smarty->assign("paragraph3",$Translator->getText("paragraph3"));

$smarty->display('about.tpl');

?>
