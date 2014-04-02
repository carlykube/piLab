<?php
	class Translator {
		private $language;
		
		function __construct() {
			//Check to see if the language changed (or doesn't exist yet)
			if(isset($_GET['lang'])) {
				setcookie("lang",$_GET['lang'],time()+(365*24*60*60)); // Language cookie expires in a year
				$language = $_GET['lang'];
			} elseif (!isset($_COOKIE['lang'])) {
				$_COOKIE['lang'] = "en";
				$language = $_COOKIE['lang'];
			} else {
				$language = $_COOKIE['lang'];
			}

			//Initialize what language we'll be using 
			if($language == "en") {
				$this->language = 0;
			} elseif($language == "es") {
				$this->language = 1;
			}

			//Autoinclude translations from the navbar
			include_once "./translations/navbar";
		}
		
		function getText($textName) {
			return $GLOBALS['translations'][$textName][$this->language];
		}
		
		function assignAllVariables() {
			$smarty = &$GLOBALS['smarty'];
			foreach($GLOBALS['translations'] as $k => $v) {
				$smarty->assign($k,$v[$this->language]);
			}
		}
	}
?>