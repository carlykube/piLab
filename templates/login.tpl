{include file="header.tpl" title=Login}

<h1>CorreoDigi</h1>
<<<<<<< HEAD
<form method="POST" action="login.php">
	{$username}: <input type="text" name="username" required><br/>
	{$password}: <input type="password" name="password" required><br/>
=======

<h2>Login</h2>
<form>
	{$username}: <input type="text" name="username"><br/>
	{$password}: <input type="text" name="password"><br/>
>>>>>>> b768810f77ec4db9ae0615a96141161bb7fae6e6
	<button>{$submit}</button>
</form>
{include file="footer.tpl"}
