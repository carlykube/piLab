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
		<h2 class="smallMargin"> Address Book <h2>
	</div>
{/if}

{include file="footer.tpl"}
