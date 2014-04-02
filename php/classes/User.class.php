<?php
	class User {
		public $userid;
		private $account, $name, $username, $gender, $htown, $bday, $avatar;


		function __construct($id = 0) {			
			$this->userid = $id;
			
			$query = "SELECT Name, Username, Gender, Birthday, Hometown FROM users WHERE ID = :userid";
			$params = array(
				'userid' => $id
			);
			$result = $GLOBALS['MySQL']->query($query,$params)->fetchAll();
			
			if (count($result) == 1){
				$usr = $result[0];
				$this->name = $usr['Name'];
				$this->username = $usr['Username'];
				$this->gender = $usr['Gender'];
				$this->bday = $usr['Birthday'];
				$this->htown = $usr['Hometown'];
			}
		}		

		function getUnreadLetters(){			
			$query = "SELECT * FROM letters WHERE UserTo = :userid AND LetterRead IS FALSE;";
			$params = array(
				':userid' => $this->userid
			);
			$result = $GLOBALS['MySQL']->query($query,$params);
			return $result->fetchAll();
		}

		function getName(){
			return $this->name;
		}

	}
?>
