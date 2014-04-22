{include file="header.tpl" title="Create Letter"}

<h2>{$title}</h2>
<div class="createLetter">
<form id="create" class='letterForm' method="POST" action="create.php">
		<p class='date'>{$date}</p><br><br>
		<p>Dear {$recipient},</p>
		<textarea rows="40" cols="10" name="message" id="message" placeholder={$typeHere} required></textarea>
		<p>From,<br> {$sender}</p><br>
		<div class="submit">  
			<input type="submit" value={$submit}>
		</div>  

		<input type="hidden" name="letterTo" value={$letterTo}> 
		<input type="hidden" value="create" name = "form"> 		
</form>
</div>

{include file="footer.tpl"}


