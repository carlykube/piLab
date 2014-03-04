<?php
class Account {
	public $logged, $id, $username;
	function __construct() {

	}

	function register() {
		//Validation
		if(empty($_POST['username'])) die("Please enter your name.");
		if(empty($_POST['email'])) die("Please enter a email.");
		if(empty($_POST['password'])) die("Please enter a password.");
		if(empty($_POST['phonenumber'])) die("Please enter a phone number.");
		if(!filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)) die("Invalid E-Mail Address.");

		//Check to see if email is in use
		$query = "SELECT 1 FROM users WHERE email = :email";
		$query_params = array(':email'=>$_POST['email']);
		$result = $GLOBALS['MySQL']->query($query,$query_params);
		if($result->fetch()) die("This email is already in use.");

		//Prepare/run statement for entry into database
		$query = "
		INSERT INTO users (
		username,
		password,
		salt,
		email,
		phone_number
		) VALUES (
		:username,
		:password,
		:salt,
		:email,
		:phonenumber
		);";
		$salt = dechex(mt_rand(0, 2147483647)) . dechex(mt_rand(0, 2147483647));
		$password = hash('sha256', $_POST['password'] . $salt);
		for($round = 0; $round < 65536; $round++)
		{
			$password = hash('sha256', $password . $salt);
		}
		$query_params = array(
			':username' => $_POST['username'],
			':password' => $password,
			':salt' => $salt,
			':email' => $_POST['email'],
			':phonenumber' => $_POST['phonenumber']
		);
		var_dump($query_params);
		$result = $GLOBALS['MySQL']->query($query,$query_params);

		//Return to log-in page after register
		header("Location: login.php");
		die("Redirecting to login.php");
	}

	function login() {
		$submitted_username = $_POST['username'];

		$query = "SELECT * from users WHERE username = :username;";
		$params = array(
			':username' => $submitted_username
		);
		$result = $GLOBALS['MySQL']->query($query,$params);
		$row = $result->fetch();
		$login_ok = false;
		if($row) {
			//Rehash the password for checking
			$check_password = hash('sha256', $_POST['password'] . $row['salt']);
			for($round = 0; $round < 65536; $round++)
			{
				$check_password = hash('sha256', $check_password . $row['salt']);
			}
			var_dump($row['password'],$check_password,$row['salt']);
			//Verify password
			if($check_password == $row['password'])
			{
				$login_ok = true;
			}
		}

		if($login_ok) {
			$this->logged = true;
			$this->username = $row['username'];
			$this->id = $row['id'];
			$_SESSION['Account'] = serialize($this);
			header("Location: index.php");
			die("Redirecting to index.php");
		} else {
			print("Login Failed.");
			$submitted_username = htmlentities($_POST['email'], ENT_QUOTES, 'UTF-8');
		}
	}

	function logout() {
		unset($_SESSION['Account']);
		header("Location: index.php");
		die("Redirecting to index.php");
	}
}
?>
