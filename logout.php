<?php

require "php/setup.php";

$user->logout();
header("Location: index.php");
die("Redirecting to index.php");


?>
