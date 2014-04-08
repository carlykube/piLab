<nav>
	<img id="logoImg" src="img/logo_holder.png" alt="Logo" title="Logo">
	<a href="index.php">{$navbarhome}</a>
	<a href="about.php">{$navbarabout}</a>

	{if !$logged}
		<a href="login.php" style="position:fixed;right:5px;">{$navbarlogin}</a>
		<a href="register.php" style="position:fixed;right:125px;">{$navbarregister}</a>
	{else}
		<a href="create.php">{$navbarcreate}</a>
		<a href="logout.php" style="position:fixed;right:5px;">{$navbarlogout}</a>
	{/if}
	
	<form method="get" action="search.php">
		<input type="text" name="query">
		<button type="submit">Search!</button>
	</form>

	
</nav>

<!-- Moves the top of the view to below the nav bar -->
<div id="navSpace"></div>