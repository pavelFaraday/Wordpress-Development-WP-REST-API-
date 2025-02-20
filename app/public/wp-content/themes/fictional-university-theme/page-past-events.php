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

    get_template_part('template-parts/content', 'event');
} ?>

<?php echo paginate_links(array (
    'total' => $pastEvents->max_num_pages
)); ?>

</div>

<?php  get_footer(); ?>