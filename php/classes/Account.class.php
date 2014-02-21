<?php
	class Account {
		public $userid, $logged;
		private $name, $username, $gender, $htown, $bday;


		function __construct() {
			$this->logged=false;
		}

		function login() {

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

			$query = "INSERT INTO users(Name, Gender, Birthday, Hometown, Password, Salt, Suspend) VALUES(:name, :gender, :bday, :htown, :password, :salt, 0);";
			$params = array(
				':name' => $this->name,
				':gender' => $this->gender,
				':bday' => $this->bday,
				':htown' => $this->htown,
				':password' => $password,
				':salt' => $salt
				);
		header("Location: index.php");
		die("Redirecting to index.php");
		}

	}
?>
