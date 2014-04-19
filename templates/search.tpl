{include file="header.tpl" title=Search}

<div class="divCenter holder">
	{foreach $results as $key=>$value}
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
				<form id="form" action="addContact.php" method="get">
					<button type="submit">Add Contact</button>
				</form>	
			</div>	
		</div>
	{/foreach}
	<div id="clearer"></div>
</div>

{include file="footer.tpl"}