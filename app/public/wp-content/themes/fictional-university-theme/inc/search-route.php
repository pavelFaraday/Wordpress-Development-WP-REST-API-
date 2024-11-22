<?php 

//  Create new RestAPI URL --- http://localhost:10033/wp-json/university/v1/search
function universityRegisterSearch() {
  register_rest_route('university/v1', 'search', array(
    'methods' => WP_REST_SERVER::READABLE, // This is WP constant - safest way to replace "GET" 
    'callback' => 'universitySearchResults'
  ));
}
add_action('rest_api_init', 'universityRegisterSearch');

function universitySearchResults() {
  return 'Congratulations, you created a route.';
}
?>