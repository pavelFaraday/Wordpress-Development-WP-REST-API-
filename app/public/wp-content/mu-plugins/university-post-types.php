<?php 
  // Create Event CPT
function university_post_types() {
    // Event Post Type
    register_post_type('events',
        array (
            'public' => true,
            'show_in_rest' => true,
            'menu_icon' => 'dashicons-calendar-alt',
            'has_archive' => true,
            'rewrite' => array('slug' => 'events'),
            'supports' => array('title', 'editor', 'thumbnail', 'excerpt'),
            'capability_type' => 'event',
            'map_meta_cap' => true,
            'labels' => array (
                'name' => __('Events'),
                'add_new_item' => 'Add New Event',
                'edit_item' => 'Edit Event',
                'all_items' => 'All Events',
                'singular_name' => __('Event')
            )
        )
    );

    // Program Post Type
    register_post_type('program',
    array (
        'public' => true,
        'show_in_rest' => true,
        'has_archive' => true,
        'menu-icon' => 'dashicons-awards',
        'rewrite' => array('slug' => 'programs'),
        'supports' => array('title'),
        'labels' => array (
            'name' => __('Programs'),
            'add_new_item' => 'Add New Program',
            'edit_item' => 'Edit Program',
            'all_items' => 'All Programs',
            'singular_name' => __('Program')
        )
      )
    );

    // Professor Post TYpe
    register_post_type('professor',
    array (
        'public' => true,
        'show_in_rest' => true,
        'has_archive' => false,
        'menu-icon' => 'dashicons-welcome-learn-more',
        'supports' => array('title', 'editor', 'thumbnail'),
        'labels' => array (
          'name' => __('Professors'),
          'add_new_item' => 'Add New Professor',
          'edit_item' => 'Edit Professor',
          'all_items' => 'All Professors',
          'singular_name' => __('Professor')
        )
      )
    );

    // Campus Post Type
    register_post_type('campus',
      array (
          'public' => true,
          'show_in_rest' => true,
          'menu_icon' => 'dashicons-location-alt',
          'has_archive' => true,
          'rewrite' => array('slug' => 'campuses'),
          'supports' => array('title', 'editor', 'thumbnail', 'excerpt'),
          'capability_type' => 'campus',
          'map_meta_cap' => true,
          'labels' => array (
            'name' => __('Campuses'),
            'add_new_item' => 'Add New Campus',
            'edit_item' => 'Edit Campus',
            'all_items' => 'All Campuses',
            'singular_name' => __('Campus')
        )
      )
    );

  // Note Post Type
  register_post_type('note', array(
    'show_in_rest' => true,
    'supports' => array('title', 'editor'),
    'public' => false,
    'show_ui' => true,
    'labels' => array(
      'name' => 'Notes',
      'add_new_item' => 'Add New Note',
      'edit_item' => 'Edit Note',
      'all_items' => 'All Notes',
      'singular_name' => 'Note'
    ),
    'menu_icon' => 'dashicons-welcome-write-blog'
  ));


}
  add_action('init', 'university_post_types');
?>