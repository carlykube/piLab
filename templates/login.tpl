{include file="header.tpl" title=Login}

<form method="POST" action="login.php">
	<table>
		<tr>
			<td>{$username}: </td>
			<td><input type="text" name="username" required> </td> </tr>
		<tr>
			<td>{$password}: </td>
			<td><input type="password" name="password" required> </td> </tr>
	</table>
	<button>{$submit}</button>
</form>

{include file="footer.tpl"}
