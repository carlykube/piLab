{include file="header.tpl" title=Register}

<h2>Register</h2>
<form class="userForm" method="POST" action="register.php" autocomplete="off">
	<label for="firstname">{$firstname}: </label>
	<input type="text" name="firstname" id="firstname" placeholder={$firstname}><br>
	<label for="lastname">{$lastname}: </label>
	<input type="text" name="lastname" id="lastname" placeholder={$lastname}><br>
	{$username}:<div id="usernameList"></div>
	<label for="password">{$password}: </label>
	<input type="password" name="password" placeholder={$password}><br>
	<label for="confirmpassword">{$confirmpassword}: </label>
	<input type="password" name="password" placeholder={$password}><br>
	<label for="gender">{$gender}: </label>
	<input type="radio" name="gender" value="male"> Male
	<input type="radio" name="gender" value="female"> Female <br>
	<label for="birthday">{$birthday}: </label>
	<input type="text" name="birthday" maxlength="10" placeholder={$birthday}><br>
	<label for="hometown">{$hometown}: </label>
	<input type="text" name="hometown" placeholder={$hometown}><br>
	<button>{$submit}</button>
</form>

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
			$('#usernameList').append("<div class='usernameRadio'><input type='radio' name='username' value='"+value+"'>"+value+"</div>");
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
