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

		function addContact($contactID){
			$query = "INSERT INTO contacts(UserOne, UserTwo) VALUES(:one, :two);";
			$params = array(
				'one' => $this->userid,
				'two' => $contactID
			);
			$result = $GLOBALS['MySQL']->query($query,$params);
		}

		// Returns array of user id's
		function getContactIds(){
			$query = "SELECT UserTwo FROM contacts WHERE UserOne=:uid;";
			$params = array(
				'uid' => $this->userid
			);
			$result = $GLOBALS['MySQL']->query($query,$params);

			return $result->fetchAll(PDO::FETCH_COLUMN, 0);		
		}

		function getContacts(){			
			$query = "SELECT t2.ID, Name, Username, Gender, Hometown, Birthday, Avatar
						FROM contacts t1 join users t2
						ON t1.UserTwo=t2.ID 
						WHERE UserOne=:uid
						ORDER BY Name;";
			$params = array(
				'uid' => $this->userid
			);
			$result = $GLOBALS['MySQL']->query($query,$params);

			return $result->fetchAll(PDO::FETCH_ASSOC);	

		}

		function getName(){
			return $this->name;
		}

		function getID(){
			return $this->userid;
		}
	}
?>