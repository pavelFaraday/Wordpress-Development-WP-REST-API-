<?php

/*
  Plugin Name: Our Word Filter Plugin
  Description: Replaces a list of words.
  Version 1.0
  Author: Brad
  Author URI: https://www.udemy.com/user/bradschiff/
*/

if( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

class OurWordFilterPlugin {
  function __construct() {
    add_action('admin_menu', array($this, 'ourMenu'));
  }

  function ourMenu() {
    add_menu_page('Words To Filter', 'Word Filter', 'manage_options', 'ourwordfilter', array($this, 'wordFilterPage'), 'dashicons-smiley', 100);
    add_submenu_page('ourwordfilter', 'Words To Filter', 'Words List', 'manage_options', 'ourwordfilter', array($this, 'wordFilterPage'));
    add_submenu_page('ourwordfilter', 'Word Filter Options', 'Options', 'manage_options', 'word-filter-options', array($this, 'optionsSubPage'));
  }

  function wordFilterPage() { ?>
    Hello world.
  <?php }

  function optionsSubPage() { ?>
    Hello world from the options page.
  <?php }

}

$ourWordFilterPlugin = new OurWordFilterPlugin();