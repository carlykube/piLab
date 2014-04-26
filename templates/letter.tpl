{include file="header.tpl" title=Letter}

	<div class="createLetter">
	<form method="POST" action="create.php">
		<p class='date'>DATE<!--{$date}--></p><br><br>
		<p>{$sender}<br>Hometown<br></p>
		<p>Dear Recipient <!--{$recipient}-->,</p>
		<p>{$text}</p>
		<p>From,<br>{$sender}</p><br>
</form>
</div>

{include file="footer.tpl"}