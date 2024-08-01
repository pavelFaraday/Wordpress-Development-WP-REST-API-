<?php 

function university_files(){
    wp_enqueue_style('university_main_styles', get_stylesheet_uri());
    // wp_enqueue_script('university_main_scripts', get_stylesheet_uri());
}

// specific action: call university_files() func at a specific moment (hook - wp_enqueue_scripts)
add_action('wp_enqueue_scripts', 'university_files');

?>





