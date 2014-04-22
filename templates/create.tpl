{include file="header.tpl" title="Create Letter"}

<h2>{$title}</h2>
<div class="createLetter">
<form id="create" class='userForm' method="POST" action="create.php">
<<<<<<< HEAD
	<textarea rows="25" cols="100" name="message" id="message" placeholder={$typeHere} required></textarea>
	<input type="hidden" name="letterTo" value={$letterTo}><br>
	<input type="hidden" value="create" name = "form">
	<input type="submit" value={$submit}> 
=======
		<p style="float:right;">{$date}</p><br><br>
		<p>Dear {$recipient},</p>
		<textarea rows="25" cols="93" name="message" id="message" placeholder={$typeHere} required></textarea>
		<p>From,<br> {$sender}</p><br>
		<div style="text-align:center">  
			<input type="submit" value={$submit}>
		</div>  

		<input type="hidden" name="letterTo" value={$letterTo}> 
		<input type="hidden" value="create" name = "form"> 		
>>>>>>> da15b039344bd36239e9f8723716737688dec239
</form>
</div>

{include file="footer.tpl"}


