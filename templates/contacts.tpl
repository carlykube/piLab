{include file="header.tpl" title=Contacts}

<h2>Address Book</h2>
<div id="contactsDiv" class="divCenter lightBackgroundBox">
		<form method="get" action="search.php">
			<input type="text" name="query">
			<button type="submit">Search!</button>
		</form><br>
		{if count($contacts) > 0}
			{foreach $contacts as $key=>$value}
				<div class="contactBox">
					<div class="name">{$value['Name']}</div>
					<div class="title">Username</div>
					<div class="content">{$value['Username']}</div>
					<div class="title">Gender</div>
					{if ($value['Gender'] == 'm') }
						<div class="content">Male</div>
					{else}
						<div class="content">Female</div>
					{/if}
					<div class="title">Hometown</div>
					<div class="content">{$value['Hometown']}</div>				
					<div class="divCenter">
						<form id="form" action="create.php" method="GET">
							<input type="hidden" name="letterTo" value={$value['ID']}>
							<button type="submit">Send Letter</button>
						</form>	
					</div>
				</div>
			{/foreach}
		{else}
			<p>No contacts. Add new contacts by searching for users.</p>
	{/if}
	<div id="clearer"></div>	
</div>

{include file="footer.tpl"}
