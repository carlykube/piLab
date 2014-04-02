<?php
	class Letter 
	{
		public $UserFrom, $UserTo, $Text, $Flagged, $LetterRead, $DateSent;
		private $id;

		function __construct()
		{
			
		}

		function send() 
		{
			
		}

		function savedraft()
		{
			
		}

		function delete()
		{
			
		}

		// Letter::getLetterById($id)
		// Returns a letter object filled with information from the database
		static function getLetterById($id) {
			$queryResult = $GLOBALS['MySQL']->query("SELECT * FROM letters WHERE ID = :id", array(':id' => $id));
			$letter = createLetterFromDbResult($queryResult);
			return $letter;
		}

		private function initializeLetterFromDbResult($queryResult) {
			$letter = new Letter();
			$resultArray = $queryResult->fetch();
			$letter->UserFrom = $resultArray->UserFrom;
			$letter->UserTo = $resultArray->UserTo;
			$letter->Text = $resultArray->Text;
			$letter->Flagged = $resultArray->Flagged;
			$letter->LetterRead = $resultArray->LetterRead;
			$letter->DateSent = $resultArray->DateSent;
			$letter->id = $resultArray->ID;
			return $letter;
		}
	}
?>