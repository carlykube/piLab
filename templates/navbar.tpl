<nav class="tab1">
  <div class="main-nav" id="main-nav">
  <!--
        Adapted for piLab from:
        Theme Name: CSS-Tricks v11
        Theme URI: http://css-tricks.com/
        Description: The Theme for CSS-Tricks dude.
        Author: Chris Coyier
        Version: 11
        License: GNU General Public License v2 or later
        License URI: http://www.gnu.org/licenses/gpl-2.0.html
        Tags: orange, css
       -->
      <a href="index.php" id="tab1" class="tab1">
        <svg viewBox="0 0 100 25" class="shape-tab">
          <use xlink:href="#shape-tab"></use>
        </svg>
        <span>{$navbarhome}</span>
      </a>

      <a href="about.php" id="tab2" class="tab2">
        <svg viewBox="0 0 100 25" class="shape-tab">
          <use xlink:href="#shape-tab"></use>
        </svg>
        <span>{$navbarabout}</span>
      </a>
      {if !$logged}
      <a href="login.php" id="tab3" class="tab3">
        <svg viewBox="0 0 100 25" class="shape-tab">
          <use xlink:href="#shape-tab"></use>
        </svg>
        <span>{$navbarlogin}</span>
      </a>

      <a href="register.php" class="tab4">
        <svg viewBox="0 0 100 25" class="shape-tab">
          <use xlink:href="#shape-tab"></use>
        </svg>
        <span>{$navbarregister}</span>
      </a>
      {else}
      <a href="" id="tab3" class="tab3">
        <svg viewBox="0 0 100 25" class="shape-tab">
          <use xlink:href="#shape-tab"></use>
        </svg>
        <span>Contacts</span>
      </a>
      <a href="create.php" class="tab4">
        <svg viewBox="0 0 100 25" class="shape-tab">
          <use xlink:href="#shape-tab"></use>
        </svg>
        <span>{$navbarcreate}</span>
      <a href="logout.php" class="tab5">
        <svg viewBox="0 0 100 25" class="shape-tab">
          <use xlink:href="#shape-tab"></use>
        </svg>
        <span>{$navbarlogout}</span>
      </a>
      {if $role == "admin"}
       <a href="admin.php" id="rightTab" class="rightTab">
        <svg viewBox="0 0 100 25" class="shape-tab-right">
          <use xlink:href="#shape-tab-right"></use>
        </svg>
        <span>Admin</span>
      </a>
      {/if}
      {/if}


<svg class="hide">
    <defs>
      <path id="shape-tab" d="M100,25C79.568,25,84.815,0,59.692,0H11.149C5.027,0,0,4.634,0,10.385V25"></path>
      <path id="shape-tab-right" d="M0,25C20.432,25,15.185,0,40.308,0h48.543C94.973,0,100,4.634,100,10.385V25"></path>
    </defs>
  </svg>
</div>

<script type="text/javascript" src="./js/navbar.js"></script>

</nav>
