<?php

require "php/setup.php";

$Translator->assignAllVariables();

$query = $_GET['query'];
$results = Account::searchUsers($query);

$smarty->assign('results', $results);
$smarty->display('search.tpl');

?>