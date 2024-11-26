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
  $professors = new WP_Query(array(
    'post_type' => array('post', 'page', 'professor'),
    "s" => sanitize_text_field($data['term'])
  ));

  $professorResults = array();

  while($professors->have_posts()){
    $professors->the_post();
    array_push($professorResults, array(
      'title' => get_the_title(),
      'permalink' => get_the_permalink(),
    ));
  }
  return $professorResults;
}
?>