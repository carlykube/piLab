<nav>
	<img id="logoImg" src="img/pilab_logo.png" alt="Logo" title="Logo">
	<div class="navbarElement">
		<a href="index.php"><img src="img/home_icon.png" alt="Logo" title="Home"><br>
			{$navbarhome}</a>
	</div>
	<div class="navbarElement">
		<a href="about.php"><img src="img/information_icon.png" alt="Logo" title="About"><br>
			{$navbarabout}</a>
	</div>
	{if !$logged}
	<div class="navbarElement">
		<a href="login.php" style="position:fixed;right:5px;">{$navbarlogin}</a>
	</div>
	<div class="navbarElement">
		<a href="register.php" style="position:fixed;right:75px;">{$navbarregister}</a>
	</div>
	{else}
		<a href="logout.php" style="position:fixed;right:5px;">{$navbarlogout}</a>

	{/if}
	
</nav>

<!-- Moves the top of the view to below the nav bar -->
<div id="navSpace"></div>
