<?php
	class Account {
		public $userid, $logged;
		private $username;


		function __construct() {
			$this->logged=false;
		}

		function login() {
			$username = $_POST['username'];

			//Check to see if username exists...
			$query = "SELECT * FROM users WHERE Username = :username;";
			$params = array(
				':username' => $username
			);

			$result = $GLOBALS['MySQL']->query($query,$params)->fetch();

			if($result) { // username exists
				$password = $_POST['password'];
				
				//Use the salt in the username's row to rehash the password
				$salt = $result['Salt'];
				$password = hash('sha256', $_POST['password'] . $salt);
				for($round = 0; $round < 65536; $round++)
				{
					$password = hash('sha256', $password . $salt);
				}
				
				//Check hashed password against hashed password in DB
				if($password == $result['Password']) { //Success!
					$this->userid = $result['ID'];
					$this->logged = true;
					$_SESSION['acct'] = serialize($this);

					$usr = new User();
					$usr->fillWithID($this->userid);

					$_SESSION['user'] = serialize($usr);

					header("Location: index.php");
					die("Redirecting to index.php");
				} else { // Wrong password
					echo "<br><br>Invalid password!";
				}
			} else { //Wrong username
				echo "<br><br>Invalid username!";
			}
			
		}

		function register() {
			$this->username=$_POST["username"];

			$salt= dechex(mt_rand(0, 2147483647)) . dechex(mt_rand(0, 2147483647));
			$password = hash('sha256', $_POST['password'] . $salt);
			for($round = 0; $round < 65536; $round++)
			{
				$password = hash('sha256', $password . $salt);
			}

			$query = "INSERT INTO users(Name, Username, Gender, Birthday, Hometown, Password, Salt, Suspend) VALUES(:name, :username, :gender, :bday, :htown, :password, :salt, 0);";
			$params = array(
				':name' => $_POST["firstname"]." ".$_POST["lastname"],
				':username' => $this->username,
				':gender' => $_POST["gender"],
				':bday' => $_POST["birthday"],
				':htown' => $_POST["hometown"],
				':password' => $password,
				':salt' => $salt
				);
			$result = $GLOBALS['MySQL']->query($query,$params);

			// Give the User a role
			$role = $_POST["regtype"];
			switch($role){
				case "mentee":
					$role = 1;
					break;
				case "mentor":
					$role = 2;
					break;
				case "teacher":
					$role = 3;
					break;
				default:	// default role is mentee
					$role = 1;
			}

			// Get id of registered user
			$tmpUser = new User();
			$tmpUser->fillWithUsername($this->username);

			$query = "INSERT INTO user_role(Usr, Role) VALUES(:userid, :role);";
			$params = array(
				':userid' => $tmpUser->getID(),
				':role' => $role
				);
			$result = $GLOBALS['MySQL']->query($query,$params);

			header("Location: login.php");
			die("Redirecting to index.php");
		}		
		
		function logout(){
			unset($_SESSION['user']);
			unset($_SESSION['acct']);
			header("Location: index.php");
		}

		static function searchUsers($query) {
			$query = strtoupper($query);
			$result = $GLOBALS['MySQL']->query('SELECT * FROM users WHERE UPPER(name) LIKE :query',array(
				':query' => '%'.$query.'%'
			));
			$result = $result->fetchAll();
			return $result;
		}

		static function forgotPassword($username) {
			// check for valid username (if valid: reset, if not: notify and exit function)

			// determine which type of user needs to reset his/her password
			// Create a User variable and use fillWithUsername() function in User class
			
			// if (acct == mentee), reset password mentee

			// if (acct == admin), reset password admin

			// if (acct == mentor), reset password mentor
		}

	}
?>