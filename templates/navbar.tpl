<nav>
	<img id="logoImg" src="img/logo_holder.png" alt="Logo" title="Logo">
	<a href="index.php">{$navbarhome}</a>
	<a href="about.php">{$navbarabout}</a>
	{if !$logged}
		<a href="login.php" style="position:fixed;right:5px;">{$navbarlogin}</a>
		<a href="register.php" style="position:fixed;right:75px;">{$navbarregister}</a>
	{else}
		<a href="logout.php" style="position:fixed;right:5px;">Logout</a>
	{/if}
	
</nav>

<!-- Moves the top of the view to below the nav bar -->
<div id="navSpace"></div>
