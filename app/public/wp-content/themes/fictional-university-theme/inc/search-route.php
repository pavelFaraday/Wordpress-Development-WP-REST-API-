<?php 

//  Create new RestAPI URL --- http://localhost:10033/wp-json/university/v1/search
function universityRegisterSearch() {
  register_rest_route('university/v1', 'search', array(
    'methods' => WP_REST_SERVER::READABLE, // This is WP constant - safest way to replace "GET" 
    'callback' => 'universitySearchResults'
  ));
}
add_action('rest_api_init', 'universityRegisterSearch');

function universitySearchResults($data) {
  $mainQuery = new WP_Query(array(
    'post_type' => array('post', 'page', 'professor', 'programs', 'events'),
    "s" => sanitize_text_field($data['term'])
  ));
 
  $results = array(
    'generalInfo' => array(),
    'professors' => array(),
    'programs' => array(),
    'events' => array(),
  );

  while($mainQuery->have_posts()){
    $mainQuery->the_post();
    if (get_post_type() == 'post' OR get_post_type() == 'page') {
      array_push($results['generalInfo'], array(
        'title' => get_the_title(),
        'permalink' => get_the_permalink(),
      ));
    }
    if (get_post_type() == 'professor') {
      array_push($results['professors'], array(
        'title' => get_the_title(),
        'permalink' => get_the_permalink(),
      ));
    }
    if (get_post_type() == 'program') {
      array_push($results['programs'], array(
        'title' => get_the_title(),
        'permalink' => get_the_permalink(),
      ));
    }
    if (get_post_type() == 'events') {
      array_push($results['events'], array(
        'title' => get_the_title(),
        'permalink' => get_the_permalink(),
      ));
    }
  }
  return $results;
}
?>