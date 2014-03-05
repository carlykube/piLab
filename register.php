<?php

require "php/setup.php";

 
if(isset($_GET['registrationtype'])) {
	$smarty->assign("registrationtype",$_GET['registrationtype']);
	

	$Translator->assignAllVariables();

	$smarty->display('register.tpl');
} else {
	$smarty->assign("whoareyou", $Translator->getText('whoareyou'));
	$smarty->display('registrationtype.tpl');
}

?>
