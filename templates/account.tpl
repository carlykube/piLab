{include file="header.tpl" title=Acccount}

<h2>Account</h2>

<div class="divCenter lightBackgroundBox userForm">
	<form id="registerForm" class="userForm" method="POST" action="register.php" autocomplete="off">
		<input type="text" name="firstname" id="firstname" placeholder="First Name"><br>
		<input type="text" name="lastname" id="lastname" placeholder="Last Name"><br>
		<p>Change Password</p>
		<input type="password" name="password" id="password" placeholder="Current Password"><br>
		<input type="password" name="confirmpassword" id="confirmpassword" placeholder="New Password"><br>
		<input type="submit" value="Submit">
	</form>
</div>


{include file="footer.tpl"}
