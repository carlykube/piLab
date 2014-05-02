{include file="header.tpl" title=Home}

{if $logged}
	<h2>Welcome, {$name}</h2>
	<div id="lettersDiv" class="divCenter lightBackgroundBox holder">
			<h2 class="smallMargin"> New Letters </h2>
			{if count($unreadLetters) > 0}
				{foreach $unreadLetters as $key=>$item}
				<div class="letter">
					<img src="img/postage_stamp.png" alt="Stamp">
					<div id="nameFrom"> {$item['SenderName']} </div>
					<div id="htown"> {$item['SenderHtown']} </div> <br>
					<div id="nameTo"> {$name} </div><br>
					<div id="letterLink" align = center><a href="letter.php?id={$item['ID']}">Read Letter</a></div>
					<!-- <p>{$item['Text']}</p><br> -->
				</div>
				{/foreach}
			{else}
				<p>No new letters</p>
			{/if}
		<div id="clearer"></div>
	</div>
	
{else}
	<div id = "redirect" class ="divCenter lightBackgroundBox Holder" align = center>{$notloggedin}<br>
	<a href = "login.php">{$navbarlogin}</a><br>
	<a href = "register.php">{$navbarregister}</a></div>
{/if}

{include file="footer.tpl"}