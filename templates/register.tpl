{include file="header.tpl" title=Register}

<h2>{$register}</h2>
<div class='envelopes'>
	<div>
		La Finca<br>
		Valle de los Angeles
	</div>
	<img src="img/postage_stamp.png" alt="Stamp">
	<img src="img/envelope_front.png" alt="Envelope">
	<img src="img/envelope_back.png" alt="Envelope">
	<form id="registerForm" class="userForm" method="POST" action="register.php" autocomplete="off">
		<input type="text" name="firstname" id="firstname" placeholder={$firstname}><br>
		<input type="text" name="lastname" id="lastname" placeholder={$lastname}><br>
		{$username}:<div id="usernameList"></div>
		<input type="password" name="password" id="password" placeholder={$password}><br>
		<input type="password" name="confirmpassword" id="confirmpassword" placeholder={$confirmpassword}><br>
		<input type="radio" name="gender" value="m"> Male
		<input type="radio" name="gender" value="f"> Female <br>
		<input type="text" name="birthday" id="birthday" maxlength="10" placeholder={$birthday}><br>
		<input type="text" name="hometown" id="hometown" placeholder={$hometown}><br>
		<input type="hidden" name="regtype" id="regtype" value={$registrationtype}>
		<input type = "hidden" name = "form" value = "register">
		<input type="submit" value={$submit}>
	</form>
</div>

{include file="footer.tpl"}

<script>
$(function() {
	updateUsernames();
});

$('#firstname').keyup(function(event){
	updateUsernames();
});
$('#lastname').keyup(function(event){
	updateUsernames();
});

function updateUsernames() {
	if($('#firstname').val() == '' || $('#lastname').val() == '') {
		$('.usernameRadio').remove();
		$('#usernameList').html("{$firstlastuser}");
	} else {
		$('.usernameRadio').remove();
		$('#usernameList').html('');
		var usernames = generateUsernames();
		$.each(usernames,function(index,value) {
			$('#usernameList').append("<div class='usernameRadio'><input type='radio' name='username' value='"+value+"'>"+value+"</div><br>");
		});
	}
}

function generateUsernames() {
	var usernames = new Array();
	usernames[0] = ($('#firstname').val().charAt(0)+$('#lastname').val()).toLowerCase();
	usernames[1] = ($('#firstname').val()+$('#lastname').val().charAt(0)).toLowerCase();
	usernames[2] = ($('#firstname').val()+'.'+$('#lastname').val()).toLowerCase();
	usernames[3] = ($('#firstname').val()+$('#lastname').val()).toLowerCase();
	return usernames;
}

</script>
