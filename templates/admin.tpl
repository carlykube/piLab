{include file="header.tpl" title="Admin Console"}

<h2>Admin Console</h2>

<div id="AdminConsole" class="divCenter lightBackgroundBox holder">
	<h2 class="smallMargin"> Registered Users </h2>
	<table class='userInfo'>
		<tr>
			<td>UserID</td>
			<td>Name</td>
			<td>Username</td>
			<td>Gender</td>
			<td>Suspended</td>
		</tr>
		{foreach $allUsers as $key => $value}
			<tr>
				<td>{$value['ID']}</td>
		  		<td>{$value['Name']}</td>
		  		<td>{$value['Username']}</td> 
		  		<td>{$value['Gender']}</td>
		  		<td>{$value['Suspend']}</td>
		  		<td><a href="admin.php?loginas={$value['ID']}">Login as {$value['Name']}</a></td>
			</tr>
		{/foreach}
	</table>
</div>

{include file="footer.tpl"}