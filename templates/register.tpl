{include file="header.tpl" title=Register}

<h2>Register</h2>
<form class="userForm" method="POST" action="register.php" autocomplete="off">
	<input type="text" name="firstname" id="firstname" placeholder={$firstname}><br>
	<input type="text" name="lastname" id="lastname" placeholder={$lastname}><br>
	{$username}:<div id="usernameList"></div>
	<input type="password" name="password" placeholder={$password}><br>
	<input type="password" name="password" placeholder={$password}><br>
	<label for="gender">{$gender}: </label>
	<input type="radio" name="gender" value="male"> Male
	<input type="radio" name="gender" value="female"> Female <br>
	<input type="text" name="birthday" maxlength="10" placeholder={$birthday}><br>
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
