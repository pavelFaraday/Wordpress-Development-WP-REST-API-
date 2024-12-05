<?php
  get_header();
  while(have_posts()) {
    the_post(); 
    pageBanner();
?>

  <div class="container container--narrow page-section">

  </div>
    
<?php } get_footer(); ?>