{include file="header.tpl" title=Register}

<h2>Register</h2>
<form method="POST" action="register.php" autocomplete="off">
		<table>
		<tr>
			<td> {$firstname}: </td>
			<td> <input type="text" id="firstname" name="firstname"> </td> </tr>
		<tr>
			<td> {$lastname}: </td>
			<td> <input type="text" id="lastname" name="lastname"> </td> </tr>
		<tr>
			<td> {$username}: </td>
			<td id="usernameList">
			 
			</td> </tr>
		<tr>
			<td>{$password}: </td>
			<td> <input type="password" name="password"> </td> </tr>
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
			$('#usernameList').html("Please enter your first and last names before picking a username");
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
