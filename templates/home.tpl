{include file="header.tpl" title =Home}

<h1>Welcome, {$name}</h1>

{if count($unreadLetters) > 0}
	{foreach $unreadLetters as $key=>$item}
		<div class="cloudLetter">
			<img id="cloud" src="img/cloud1.png" alt="cloud" title="Cloud Image">
			<p>Letter</p>
			<p>{$item['Text']}</p><br>
		</div>
	{/foreach}
{else}
	<p>No new letters</p>
{/if}


{include file="footer.tpl"}