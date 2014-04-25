{include file="header.tpl" title="Forgot Password"}

<h2>{$title}</h2>
<div class='envelopes'>
	<img src="img/postage_stamp.png" alt="Stamp">
	<img src="img/envelope_front.png" alt="Envelope">
	<img src="img/envelope_back.png" alt="Envelope">
	<form id="changePasswordForm" class="resetpassForm" method="POST" action="forgotPassword.php">
		<input type="text" name="newusername" id="newusername" placeholder={$username} required><br>
		<input type="password" name="newpassword" id="newpassword" placeholder={$newpassword} required><br>
		<input type="password" name="confirmnewpassword" id="confirmnewpassword" placeholder={$confirmnewpassword} required><br>
		<input type="text" name="adminusername" id="adminusername" placeholder={$adminusername} required><br>
		<input type="password" name="adminpassword" id="adminpassword" placeholder={$adminpassword} required><br>
		<input type="hidden" name="form" value="login">
		<input type="submit" value={$submit}>
	</form>
</div>

{include file="footer.tpl"}