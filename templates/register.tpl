{include file="header.tpl" title=Login}

<h1>CorreoDigi</h1>

<h2>Register</h2>
<form>
	{$firstname}: <input type="text" name="firstname"><br/>
	{$lastname}: <input type="text" name="lastname"><br/>
	{$username}: <input type="radio" name="username" value="username1"><br/>
				 <input type="radio" name="username" value="username2"><br/>
				 <input type="radio" name="username" value="username3"><br/>
				 <input type="radio" name="username" value="username4"><br/>
	{$password}: <input type="text" name="password"><br/>
	{$gender}: <input type="radio" name="gender" value="male"><br/>
			   <input type="radio" name="gender" value="female"><br/>

	{$hometown}: <input type="text" name="hometown"><br/>
	<button>{$submit}</button>
</form>
{include file="footer.tpl"}
