<?php

/*
  Plugin Name: Our Test Plugin
  Description: A truly amazing plugin.
  Version: 1.0
  Author: Brad
  Author URI: https://www.udemy.com/user/bradschiff/
*/

add_filter('the_content', 'addToEndOfPost');

function addToEndOfPost($content) {
  if (is_page() && is_main_query()) {
    return $content . '<p>My name is Brad.</p>';
  }

  return $content;
}