{include file="header.tpl" title =Home}

{foreach $results as $key=>$value}
	<div>
		<h2>{$value['Name']}</h2>
		<h3>{$value['Username']}</h3>
	</div>
{/foreach}

{include file="footer.tpl"}