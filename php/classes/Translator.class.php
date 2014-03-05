<?php
	class Translator {
		private $language;
		function __construct($language) {
			if($language == "en") {
				$this->language = 0;
			} elseif($language == "es") {
				$this->language = 1;
			}
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
