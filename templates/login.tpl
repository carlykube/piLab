{include file="header.tpl" title=Login}

<h2>Log In</h2>
<form method="POST" action="login.php">
	<input type="text" name="username" id="username" placeholder={$username} required><br>
	<input type="password" name="password" id="password" placeholder={$password} required><br>
	<button>{$submit}</button>
</form>

{include file="footer.tpl"}
