{include file="header.tpl" title=Home}

{if $logged}
	<h2>Welcome, {$name}</h2>
	<div id="lettersDiv" class="divCenter lightBackgroundBox holder">
			<h2 class="smallMargin"> New Letters </h2>
			{if count($unreadLetters) > 0}
				{foreach $unreadLetters as $key=>$item}
				<div class="letter">
					<div id="nameFrom"> {$item['UserFrom']} </div>
					<div id="nameTo"> {$name} </div>
					<p>{$item['Text']}</p><br>
				</div>
				{/foreach}
			{else}
				<p>No new letters</p>
			{/if}
		<div id="clearer"></div>
	</div>
	<div id="contactsDiv" class="divCenter lightBackgroundBox holder">
		<h2 class="smallMargin"> Address Book </h2>
		{if count($contacts) > 0}
			{foreach $contacts as $key=>$value}
				<div class="contactBox">
					<div class="name">{$value['Name']}</div>
					<div class="title">Username</div>
					<div class="content">{$value['Username']}</div>
					<div class="title">Gender</div>
					{if ($value['Gender']) }
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
{/if}

{include file="footer.tpl"}
