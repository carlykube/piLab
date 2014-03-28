<?php

require "php/setup.php";

$user->logout();
header("Location: home.php");
die("Redirecting to index.php");


?>
