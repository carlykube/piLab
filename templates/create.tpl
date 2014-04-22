{include file="header.tpl" title="Create Letter"}

<h2>{$title}</h2>
<form id="create" class='userForm' method="POST" action="create.php">
	<textarea rows="25" cols="100" name="message" id="message" placeholder={$typeHere} required></textarea>
	<input type="hidden" name="letterTo" value={$letterTo}><br>
	<input type="hidden" value="create" name = "form">
	<input type="submit" value={$submit}> 
</form>

{include file="footer.tpl"}


