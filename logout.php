<?php

require "php/setup.php";

$acct->logout();
header("Location: index.php");
die("Redirecting to index.php");


?>
