<?php
	class Account {
		public $userid, $logged;
		private $name, $username, $gender, $htown, $bday, $avatar;


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
					$this->name = $result['Name'];
					$this->gender = $result['Gender'];
					$this->bday = $result['Birthday'];
					$this->htown = $result['Hometown'];
					$this->avatar = $result['Avatar'];
					$this->username = $result['Username'];
					$this->logged = true;
					$_SESSION['user'] = serialize($this);
					header("Location: index.php");
					die("Redirecting to index.php");
				}
			} else { //Wrong username
				echo "Invalid username!";
			}
		}

		function register() {
			$this->name=$_POST["fname"]." ".$_POST["lname"];
			$this->username=$_POST["username"];
			$this->gender=$_POST["gender"];
			$this->htown=$_POST["htown"];
			$this->bday=$_POST["bday"];
			
			$salt= dechex(mt_rand(0, 2147483647)) . dechex(mt_rand(0, 2147483647));
			$password = hash('sha256', $_POST['password'] . $salt);
			for($round = 0; $round < 65536; $round++)
			{
				$password = hash('sha256', $password . $salt);
			}

			$query = "INSERT INTO users(Name, Username, Gender, Birthday, Hometown, Password, Salt, Suspend) VALUES(:name, :username, :gender, :bday, :htown, :password, :salt, 0);";
			$params = array(
				':name' => $this->name,
				':username' => $this->username,
				':gender' => $this->gender,
				':bday' => $this->bday,
				':htown' => $this->htown,
				':password' => $password,
				':salt' => $salt
				);
		$result = $GLOBALS['MySQL']->query($query,$params);
		header("Location: index.php");
		die("Redirecting to index.php");
		}
		
		function logout(){
			unset($_SESSION['user']);
		}

	}
?>
