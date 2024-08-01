<!-- display Single Page  -->
<?php 
get_header();

    while ( have_posts() ) { 
        the_post(); ?>
    <p>This is a page, not Post!</p>
    <h2><?php the_title(); ?></h2>
    <?php the_content(); ?>
    <?php }

get_footer();
?>
