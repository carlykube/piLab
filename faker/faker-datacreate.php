<?php
// require the Faker Autoloader
require_once 'C:\wamp\www\faker\Faker-master\src\autoload.php';
// use the factory to create a Faker\Generator instance
$faker = Faker\Factory::create();

require('MySQL.class.php');
$MySQL = new MySQL();

$values = array();

for($i = 0; $i < 10; $i++) {
	$MySQL->query("INSERT INTO users (Name,Username,Gender,Password,Salt) VALUES (:name,:username,:gender,:password,:salt);",array(
		':name' => $faker->name,
		':username' => $faker->userName,
		':gender' => 'M',
		':password' => "password",
		':salt' => 'pepper'
		)
	);
}
?>