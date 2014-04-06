{include file="header.tpl" title=Login}

<h2>{$login}</h2>
<div class='envelopes'>
	<div>
		La Finca<br>
		Valle de los Angeles
	</div>
	<img src="img/postage_stamp.png" alt="Stamp">
	<img src="img/envelope_front.png" alt="Envelope">
	<img src="img/envelope_back.png" alt="Envelope">
	<form id="logInForm" class='userForm' method="POST" action="login.php">
		<input type="text" name="username" id="username" placeholder={$username} required><br>
		<input type="password" name="password" id="password" placeholder={$confirmpassword} required><br>
		<input type="hidden" name="form" value="login">
		<input type="submit" value={$submit}>
	</form>
</div>

{include file="footer.tpl"}
