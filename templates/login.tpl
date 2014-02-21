{include file="header.tpl" title=Login}

<h1>CorreoDigi</h1>
<form method="POST" action="login.php">
	{$username}: <input type="text" name="username" required><br/>
	{$password}: <input type="password" name="password" required><br/>
	<button>{$submit}</button>
</form>
{include file="footer.tpl"}
