{include file="header.tpl" title="Create Letter"}

<h2>{$title}</h2>
<form id="create" class='userForm' method="POST" action="create.php">

		<textarea rows="25" cols="100"> {$type} </textarea>
		<br/>
		<input type="submit" value={$submit}> 
		<input type="hidden" value="create" name = "form"> 
		
</form>

{include file="footer.tpl"}


