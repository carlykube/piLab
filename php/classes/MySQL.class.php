<?php
class MySQL {

	private $host = "localhost";
	private $user = "root";
	private $password = "root"; 
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
			$statement = $this->c->prepare(method);
			$result = $statement->execute($params);
			return $result->fetchAll();
		}
		catch(PDOException $e)
		{
			die("Your query sucked");
		}

	}
}
?>
