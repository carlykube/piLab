<?php
	class User {
		public $userid;
		private $account, $name, $username, $gender, $htown, $bday, $avatar, $role;


		function __construct() {			
			$this->userid = 0;
		}

		function fillWithID($id){
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

			$this->fillRole();
		}

		function fillWithUsername($username){
			$this->username = $username;
			
			$query = "SELECT Name, ID, Gender, Birthday, Hometown FROM users WHERE Username = :username";
			$params = array(
				'username' => $username
			);
			$result = $GLOBALS['MySQL']->query($query,$params)->fetchAll();
			
			if (count($result) == 1){
				$usr = $result[0];
				$this->name = $usr['Name'];
				$this->userid = $usr['ID'];
				$this->gender = $usr['Gender'];
				$this->bday = $usr['Birthday'];
				$this->htown = $usr['Hometown'];
			}

			$this->fillRole();
		}

		private function fillRole(){
			$query = "SELECT Role FROM user_role WHERE Usr = :id";
			$params = array(
				'id' => $this->userid
			);
			$result = $GLOBALS['MySQL']->query($query,$params)->fetchAll();
			
			if (count($result) == 1){
				$this->role = $result[0]['Role'];
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

		function getID(){
			return $this->userid;
		}

	}
?>
