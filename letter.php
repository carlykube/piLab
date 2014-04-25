<?php

require "php/setup.php";

if(!$acct->logged) {

	errorMessage("You need to be logged in to read letters!");
	die("Redirect to login.php");
}

$letterID = $_GET['id'];
$letter = $GLOBALS['MySQL']->query(
	"SELECT * FROM letters WHERE UserTo = :usertoid AND ID = :letterid",
	array(
		':usertoid' => $acct->userid,
		':letterid' => $letterID
	))->fetch();

if(!$letter) {

	errorMessage("There was a problem opening your message.");
	die("Redirect to index.php");
}

$sender = $GLOBALS['MySQL']->query(
	"SELECT Name FROM users WHERE ID = :senderID",
	array(
		':senderID' => $letter['UserFrom']
	))->fetch();

$smarty->assign('sender', $sender[0]);
$smarty->assign('text', $letter['Text']);

$Translator->assignAllVariables();

$smarty->display('letter.tpl');

?>