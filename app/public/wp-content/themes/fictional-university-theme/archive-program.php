<?php get_header(); 

// Header Banner
pageBanner(array(
  'title' => 'All Programs',
  'subtitle' => 'There is something for everyone. Have a look around.'
));
?>

<!-- List Down all CPT Events -->
<div class="container container--narrow page-section">
    <ul class="link-list min-list">
        <?php 
        while (have_posts()) {
            the_post(); 
        ?>
        <li>
            <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
        </li>
        <?php } ?>
        <?php echo paginate_links(); ?>
    </ul>
</div>

<?php  get_footer(); ?>