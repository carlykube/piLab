<nav>
	<img id="logoImg" src="img/pilab_logo.png" alt="Logo" title="Logo">
	<div class="navbarElement">
		<a href="index.php"><img src="img/home_icon.png" alt="Home" title="Home"><br>
			{$navbarhome}</a>
	</div>
	<div class="navbarElement">
		<a href="about.php"><img src="img/information_icon.png" alt="About" title="About"><br>
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
<!-- 	<div class="navbarElement">
		<a href="create.php"><img src="img/envelope_dark.png" alt="Create" title="Create"><br>
			{$navbarcreate}</a>
	</div> -->
		<a href="logout.php" style="position:fixed;right:5px;">{$navbarlogout}</a>
	{/if}
	
	<form method="get" action="search.php">
		<input type="text" name="query">
		<button type="submit">Search!</button>
	</form>

	
</nav>

<!-- Moves the top of the view to below the nav bar -->
<div id="navSpace"></div>
