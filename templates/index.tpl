{include file="header.tpl" title=Home}

{if $logged}
<h1>Welcome, {$name}</h1>
	{if count($unreadLetters) > 0}
		{foreach $unreadLetters as $key=>$item}
				<p>Letter</p>
				<p>{$item['Text']}</p><br>
		{/foreach}
	{else}
		<p>No new letters</p>
	{/if}
{/if}

{include file="footer.tpl"}
