{include file="header.tpl" title=Login}

<h2>{$login}</h2>
<form method="POST" action="login.php">
	<label for="username">{$username}: </label>
	<input type="text" name="username" id="username" placeholder={$username} required><br>
	<label for="password">{$password}: </label>
	<input type="password" name="password" id="password" placeholder={$password} required><br>
	<input type="hidden" name="form" value="login">
	<button>{$submit}</button>
</form>

{include file="footer.tpl"}
