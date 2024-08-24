<!DOCTYPE html>
<!-- lang="en-ES" -->
<html <?php language_attributes(); ?>>
  <head>
    <!-- For the RWD -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <meta charset="UTF-8"> -->
    <meta charset="<?php bloginfo('charset'); ?>">
    <?php wp_head(); ?>
    <title><?php bloginfo('name') ?></title>
  </head>
  <!-- Displays the class names for the body element: ---class="home blog logged-in admin-bar  customize-support" cz-shortcut-listen="true"--- -->
  <body <?php body_class(); ?>>
    <header class="site-header">
      <div class="container">
        <h1 class="school-logo-text float-left">
          <a href="<?php echo site_url() ?>"><strong>Fictional</strong> University</a>
        </h1>
        <span class="js-search-trigger site-header__search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span>
        <i class="site-header__menu-trigger fa fa-bars" aria-hidden="true"></i>
        <div class="site-header__menu group">
          <nav class="main-navigation">
          <?php 
            // Register Dynamic WP Header Menu
            wp_nav_menu(array(
              'theme_location' => 'headerMenuLocation'
            ));
          ?>
          </nav>
          <div class="site-header__util">
            <a href="#" class="btn btn--small btn--orange float-left push-right">Login</a>
            <a href="#" class="btn btn--small btn--dark-orange float-left">Sign Up</a>
            <span class="search-trigger js-search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span>
          </div>
        </div>
      </div>
    </header>