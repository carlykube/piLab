<?php
class MySQL {

	private $host = "localhost";

	
	private $user = "pilab";
	private $password = "ewbSMU"; 
   
	private $dbname = "pilab";
	private $c;
	
	function __construct() {
		try
		{
			$this->c=new PDO("mysql:host={$this->host};dbname={$this->dbname};charset=utf8", $this->user, $this->password);
		}
		catch(PDOException $e)
		{
			die("You could not connect to the SQL database: ".$e->getMessage());
		}
	}	

	function query($query, $params)
	{
		try
		{
			$statement = $this->c->prepare($query);
			$result = $statement->execute($params);
			return $result;
		}
		catch(PDOException $e)
		{
			die("Your query sucked");
		}

	}
}
?>
