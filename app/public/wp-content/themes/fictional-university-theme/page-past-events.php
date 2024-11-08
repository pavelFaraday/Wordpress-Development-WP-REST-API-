<?php
get_header();

// page Banner
pageBanner(array(
  'title' => 'Past Events',
  'subtitle' => 'A recap of our past events.'
));
?>

<!-- List Down all CPT Events -->
<div class="container container--narrow page-section">
<?php

// List Down all past events
$today = date('Ymd'); // Today
$pastEvents = new WP_Query(array(
    'paged' => get_query_var('paged', 1),
    'post_type' => 'events',
    'meta_key' => 'event_date', // 'event_date' - name of the custom field
    'orderby' => 'meta_value_num',  // Date is number, so sort with Date ('event_date') ASC order
    'order' => 'ASC',
    'meta_query' => array(
        array(
        'key' => 'event_date', // meta_key -> name of the custom field
        'compare' => '<=', // Comparision
        'value' => $today,
        'type' => 'numeric' // We should compare only numeric values (date)
        )
    ), // All this Array logic means: Only show event posts if event_date <= Today Date
));

while($pastEvents->have_posts()){
    $pastEvents->the_post();
?>

<div class="event-summary">
  <a class="event-summary__date t-center" href="<?php the_permalink(); ?>">
    <span class="event-summary__month">
      <?php 
        $eventDate = new DateTime(get_field('event_date'));
        echo $eventDate->format('M');  
      ?>
    </span>
    <span class="event-summary__day">
      <?php 
        echo $eventDate->format('d');  
      ?>
    </span>
  </a>
    <div class="event-summary__content">
        <h5 class="event-summary__title headline headline--tiny"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
        <p><?php echo wp_trim_words(get_the_content(), 18); ?><a href="<?php the_permalink(); ?>" class="nu gray">Learn more</a></p>
    </div>
</div>
<?php } ?>

<?php echo paginate_links(array (
    'total' => $pastEvents->max_num_pages
)); ?>

</div>

<?php  get_footer(); ?>