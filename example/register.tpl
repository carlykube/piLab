{include file="header.tpl" title='Login'}

<div class ="container">

	<form class="form-signin" role="form" method="POST" action="register.php">
		<h2 class="form-signin-heading">Register</h2>
		<input type='hidden' name='form' value='register'>
        Username<input name="username" type="text" class="form-control" placeholder="Username" required autofocus>
        <br>
        Password<input name="password" type="password" class="form-control" placeholder="Password" required>
        <br>
        Email Address<input name="email" type="email" class="form-control" placeholder="email address" required>
        <br>
        Phone Number<input name="phonenumber" type="tel" class="form-control" placeholder="phone number" required>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>

</div>

{include file="footer.tpl"}
