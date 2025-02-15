<?php get_header();

// Header Banner
pageBanner(array(
  'title' => get_the_archive_title(), 
  'subtitle' => get_the_archive_description(),
));
?>

<!-- List Down all Posts -->
<div class="container container--narrow page-section">
  <?php 
   while (have_posts()) {
    the_post(); 
  ?>
  <div class="post_item">
    <h2><a class="headline headline--medium headline--post-title" href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
    <div class="metabox">
      <p>Posted by <?php the_author_posts_link(); ?> on <?php the_time('Y F'); ?> in <?php echo get_the_category_list(', '); ?></p>
    </div>
    <div class="generic_content">
      <?php the_excerpt(); ?>
      <p><a class="btn btn--blue" href="<?php the_permalink(); ?>">Continue reading &raquo</a></p>
    </div>
  </div>
  <?php } ?>
<?php echo paginate_links(); ?>
</div>

<?php  get_footer(); ?>