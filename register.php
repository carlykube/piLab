<?php

require "php/setup.php";

if(isset($_GET['registrationtype'])) {
	$smarty->assign("registrationtype",$_GET['registrationtype']);
	
	$smarty->assign("firstname",$Translator->getText("firstname"));
	$smarty->assign("lastname", $Translator->getText("lastname"));
	$smarty->assign("username",$Translator->getText("username"));
	$smarty->assign("password", $Translator->getText("password"));
	$smarty->assign("gender",$Translator->getText("gender"));
	$smarty->assign("birthday",$Translator->getText("birthday"));
	$smarty->assign("hometown", $Translator->getText("hometown"));
	$smarty->assign("submit", $Translator->getText("submit"));
	$smarty->assign("firstlastuser", $Translator->getText("firstlastuser"));

	$smarty->display('register.tpl');
} else {
	$smarty->assign("whoareyou", $Translator->getText('whoareyou'));
	$smarty->display('registrationtype.tpl');
}

?>
