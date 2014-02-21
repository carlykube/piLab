{include file="header.tpl" title=Register}

<h2>Register</h2>
<form method="POST" action="register.php">
		<table>
		<tr>
			<td> {$firstname}: </td>
			<td> <input type="text" name="firstname"> </td> </tr>
		<tr>
			<td> {$lastname}: </td>
			<td> <input type="text" name="lastname"> </td> </tr>
		<tr>
			<td> {$username}: </td>
			<td> <input type="radio" name="username" value="username1"><br/>
				 <input type="radio" name="username" value="username2"><br/>
				 <input type="radio" name="username" value="username3"><br/>
				 <input type="radio" name="username" value="username4"> </td> </tr>
		<tr>
			<td>{$password}: </td>
			<td> <input type="text" name="password"> </td> </tr>
		<tr>
			<td> {$gender}: </td>
			<td> <input type="radio" name="gender" value="male"> Male
			     <input type="radio" name="gender" value="female"> Female </td> </tr>
		<tr>
			<td>{$birthday}: </td>
			<td> <input type="text" name="birthday" maxlength="10"> </td> </tr>
		<tr>
			<td>{$hometown}: </td>
			<td> <input type="text" name="hometown"> </td> </tr>
	</table>
	<button>{$submit}</button>
</form>

{include file="footer.tpl"}
