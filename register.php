<?php

require "php/setup.php";
 
if(isset($_GET['registrationtype'])) {
	$smarty->assign("registrationtype",$_GET['registrationtype']);
	
	$Translator->assignAllVariables();

	$smarty->display('register.tpl');
} else {
	$smarty->assign("whoareyou", $Translator->getText('whoareyou'));
	$smarty->assign("teacher", $Translator->getText('teacher'));
	$smarty->assign("mentor", $Translator->getText('mentor'));
	$smarty->assign("student", $Translator->getText('student'));
	$Translator->assignAllVariables();
	$smarty->display('registrationtype.tpl');
}

?>