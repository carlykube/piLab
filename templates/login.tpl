{include file="header.tpl" title=Login}

<h2>{$login}</h2>
<div class='divCenter'>
	<form class='userForm lightBackgroundBox' method="POST" action="login.php">
		<input type="text" name="username" id="username" placeholder={$username} required><br>
		<input type="password" name="password" id="password" placeholder={$confirmpassword} required><br>
		<input type="hidden" name="form" value="login">
		<input type="submit" value={$submit}>
	</form>
</div>

{include file="footer.tpl"}
