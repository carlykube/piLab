<?php
	function autoloader($class) {
		include 'classes/'.$class.'.class.php';
	}
	spl_autoload_register('autoloader');
?>
