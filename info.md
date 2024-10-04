## Actions

#### `after_setup_theme` - An Action

This hook is called during each page load, after the theme is initialized. It is generally used to perform basic setup, registration, and init actions for a theme.

#### `pre_get_posts` - An Action
Right before WordPress sends its query to the database, 'pre_get_posts' hook will give our function the last word to execute/run. It will give us a chance to adjust the query, hence the name of the event. 
📌 `pre_get_posts` hook works GLOBALLY - for all posts Queries/listings!!! So, Rules will be expand/apply on all posts & custom posts. It is too universal, because it will customize every single query on website. 
📌 It adds pagination to post lists as well. 
📌 It applies on Backend Queries as well !!!

**Example 1:**
```php
function university_adjust_queries ($query) {
  if(!is_admin() AND is_post_type_archive('events') AND $query->is_main_query()){
    $query->set('posts_per_page', '1');
  }
}
add_action('pre_get_posts', 'university_adjust_queries');
```


**Example 2:**
```php
function university_adjust_queries ($query) {
  $today = date('Ymd');

  if(!is_admin() AND is_post_type_archive('events') AND $query->is_main_query()){
    $query->set('meta_key', 'event_date');
    $query->set('orderby', 'meta_value_num');
    $query->set('order', 'ASC');
    $query->set('meta_query', array(
      array(
        'key' => 'event_date',
        'compare' => '>=', 
        'value' => $today,
        'type' => 'numeric'
      )
    ));
  }
}
add_action('pre_get_posts', 'university_adjust_queries');
```
---

#### `wp_enqueue_style()`
Registers the CSS style if source provided (does NOT overwrite) and enqueues.

#### `wp_enqueue_script()`
Registers the JS scripts if `$src` provided (does NOT overwrite), and enqueues it.

> **Example:** 
`wp_enqueue_script('main-university-js', get_theme_file_uri('/build/index.js'), array('jquery'), '1.0', true);`

#### `get_stylesheet_uri()`
Automatically Retrieves stylesheet URI for the active theme.
The stylesheet file name must be 'style.css' which is appended to the stylesheet directory URI path.

#### `get_theme_file_uri()`
Retrieves the URL of a file in the theme.
> **Example:** `get_theme_file_uri('/build/style-index.css')`

#### `wp_footer()`
Prints scripts or data before the closing body tag on the front end.

#### `add_theme_support()`
Registers theme support for a given feature.
Must be called in the theme’s **`functions.php`** file to work.
If attached to a hook, it must be **`after_setup_theme`**.
> **Example:** `add_theme_support('title-tag');`
> adds title meta tag in the head

#### `site_url()`
Retrieves the Root URL for the current site. Returns the ‘site_url’ option with the appropriate protocol, ‘https’ if is_ssl() and ‘http’ otherwise.
> **Example:** `<li><a href="<?php echo site_url('/about-us') ?>">About Us</a></li>`

#### `the_title()` 
Displays or retrieves the current post title with optional markup.
> **Example:** `<p><?php echo the_title(); ?></p>`

#### `get_the_title()`
Retrieves the post title.
If the post is protected and the visitor is not an admin, then "Protected" will be inserted before the post title. If the post is private, then "Private" will be inserted before the post title.

#### `the_content();`
Displays the post content.

#### `the_excerpt();`
Displays the post excerpt.

#### `has_excerpt();`
Determines whether the post has a custom excerpt set on the WP Dashboard.
> **Example of best excerpt conditional logic:**
```
<p>
    <?php 
        if (has_excerpt()) {
            echo get_the_excerpt();
        } else {
            echo wp_trim_words(get_the_content(), 18);
        } 
    ?>
</p>
```

#### `the_author_posts_link();`
Displays an HTML link with Author name to the author page of the current post’s author.

#### `get_the_category_list()`
Retrieves category list for a post in either HTML list or custom format.
> **Example:** `<p><?php echo get_the_category_list(', '); ?></p>`

#### `get_the_ID()`
Retrieves the ID of the current item (post or page) in the WordPress Loop.
> **Example:** `<?php echo get_the_ID(); ?> // 16 integer` 

#### `wp_get_post_parent_id()`
Returns the ID of the post’s parent, if it exists, otherwise returns 0.

#### `get_permalink()`
Retrieves the full permalink for the current post or post ID.

#### Difference between prebuilt wordpress functions `get_` & `the_`

- If a function begins with `the` word the, that means WordPress will **indeed handle echoing and outputting it onto the page for you 👍**.

- On the other hand,if a WordPress function begins with the word `get`, that means **it's not going to echo anything for you! 🚫**. It's just going to return a value, saving it in PHP memory and it's up to you to use that value however you see fit.

> **Example 1:** `the_title()` VS `get_the_title`
> **Example 2:** `the_ID()` VS `get_the_ID()`

#### `wp_list_pages();`

Retrieves or displays a list of pages hierarchically (or hierarchical post type items) in **list (li)** format.

**Example:**
```
wp_list_pages(array(
    "title_li" => NULL,
    "child_of" => $findChildrenOf,
    "sort_column" => "menu_order"
));
```

#### `get_pages();`
Retrieves an **array** of pages (or hierarchical post type items).  

*Very similar to `wp_list_pages();`. The only difference is that `wp_list_pages();` --> will handle <u>outputting the pages onto the screen</u>, whereas `get_pages();` --> just returns the pages in memory.*

#### `language_attributes();`
Displays the language attributes for the ‘html’ tag.

**Example:** 
```
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
```

#### `bloginfo()`
Displays different information about the current site.

> **Example 1:** `<meta charset="<?php bloginfo('charset'); ?>">` 
> **Example 2:** `<title><?php bloginfo('name') ?></title>`
> **Example 3:** `<?php bloginfo( 'description' ); ?>`
> **Example 4:** `<?php bloginfo( 'url' ); ?>`

**Example 5:** 
```
<h1><a href="<?php bloginfo( 'url' ); ?>"><?php bloginfo( 'name' ); ?></a></h1>
<h3><?php bloginfo( 'description' ); ?></h3>
```

#### `body_class();`
Displays information about the current site.

> **Example:** ` <body <?php body_class(); ?>>`
> **Result: class="page-name blog child_or_parent_Page logged-in page-id admin-bar  customize-support"**

---

#### How to setup Wordpress Dynamic Menu Location
**Step 1:** in `functions.php` --> use `after_setup_theme` Hook with `register_nav_menu()` function:
```
function university_features() {
  register_nav_menu('headerMenuLocation', 'Header Menu Location');
  register_nav_menu('footerLocationOne', 'Footer Location One');
  register_nav_menu('footerLocationTwo', 'Footer Location Two');
}
add_action('after_setup_theme', 'university_features');
```

**Step 2:** in `header.php` --> use `wp_nav_menu()` function and Wordpress will fetch Menu customized from the **Dashboard**:
```
<nav class="main-navigation">
    <?php 
        wp_nav_menu(array(
            'theme_location' => 'headerMenuLocation'
        ));
    ?>
</nav>
```

**Step 3:** in `footer.php` --> use `wp_nav_menu()` function and Wordpress will fetch Menu customized from the **Dashboard**:
```
<nav class="nav-list">
    <?php 
        wp_nav_menu(array(
            'theme_location' => 'footerLocationOne'
        ));
    ?>
</nav>
```
---

#### `pagination_list()`
Create pagination is posts;

#### `paginate_links()`
Retrieves paginated links for archive post pages.
❗️This is general WP pagination & only works with default queries, that WP makes on its own tied to the current URL.❗️

#### `get_query_var()`
Retrieves the value of a query variable in the WP_Query class.
We use it for Pagination in Custom Queries.

**@param:** `$query_var`: The variable key to retrieve.
**@param:** `$default_value`: Optional. Value to return if the query variable is not set. Default empty string.

**@return:** Contents of the query variable.

```php
$pastEvents = new WP_Query(array(
    'paged' => get_query_var('paged', 1),
    // another code..
));

⬆️⬆️⬆️ Works with ⬇️⬇️⬇️

<?php echo paginate_links(array (
    'total' => $pastEvents->max_num_pages
)); ?>
```

---

#### `is_category()`
Determines whether the query is for an existing category archive page.

#### `is_author()`
Determines whether the query is for an existing author archive page.

#### `the_archive_title()`
Displays the archive title based on the queried object.

#### `the_archive_description()`
Displays category, tag, term, or author description from Wordpress dashboard.

#### `get_post_type_archive_link()`
Retrieves the permalink for a post type archive.
@param $post_type: Post type.
@return The post type archive permalink.
> **Example:** `get_post_type_archive_link('events)`

P.S Most often we use these functions in `archive.php`

> **Examples:** 
```
if (is_category()) {
    single_cat_title();
}
if (is_author()) {
    echo 'Posts by '; the_author();
}
```
Or instead of this if/else statements we can write: `the_archive_title();`


#### `single_cat_title();`
Displays or retrieves page title for category archive.

#### `the_author()`
Displays the name of the author of the current post.

---

## Custom Queries
Custom Queries allow us to load whatever we want, wherever we want.

In WordPress, a Custom Query refers to a query that retrieves specific data from the WordPress database beyond the default set of posts or pages. It allows developers to fetch data based on custom criteria such as custom post types, specific taxonomies, meta fields, or a particular date range.

So, custom queries are the right tool for the job when you want to do something that isn't related to the default behavior of the current URL.

WordPress uses the WP_Query class to handle the default query (e.g., listing posts on a blog). However, if you need more control over what content is displayed, you can create a Custom Query using WP_Query, get_posts(), or query_posts() functions.

`WP_Query()` - Sets up the WordPress query, if parameter is not empty.


**Example - Loop 2 recent posts with Custom Query:** 
```php
<?php 
    $homepageEvents = new WP_Query(array(
        'posts_per_page' => -1, //  "-1" - return all posts
        'post_type' => 'events',
        'orderby' => 'post_date', // default is 'post_date' (another properties: 'title', 'rand', 'meta_value')
        'order' => 'ASC' // default is 'DESC'
    )); 

while($homepage_posts->have_posts()){
    $homepage_posts->the_post();
?>
    <div class="event-summary">
    <a class="event-summary__date event-summary__date--beige t-center" href="<?php the_permalink(); ?>">
        <span class="event-summary__month"><?php the_time('M'); ?></span>
        <span class="event-summary__day"><?php the_time('d'); ?></span>
    </a>
    <div class="event-summary__content">
        <h5 class="event-summary__title headline headline--tiny"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
        <p><?php echo wp_trim_words(get_the_content(), 18); ?>  <a href="<?php the_permalink(); ?>" class="nu gray">Read more</a></p>
    </div>
    </div>
<?php } wp_reset_postdata(); ?> 
```
---
## Meta Query

In WordPress, a **meta query** is a specialized type of query used within the `WP_Query` class to  **filter posts based on the value of post meta fields (also known as custom fields).** Post meta fields allow you to store additional information about a post, page, or custom post type, and meta queries make it easy to retrieve content based on this data.

#### Example of a Meta Query:
```php
// Hide event if it's date is in the past  (show event if event_date >= Today)
$today = date('Ymd'); // Today
$homepageEvents = new WP_Query(array(
    'posts_per_page' => -1,
    'post_type' => 'events',
    'meta_key' => 'event_date', // 'event_date' - name of the custom field
    'orderby' => 'meta_value_num',  // Date is number, so sort with Date ('event_date') ASC order
    'meta_query' => array(
        array(
        'key' => 'event_date', // meta_key -> name of the custom field
        'compare' => '>=', // Comparision
        'value' => $today,
        'type' => 'numeric' // We should compare only numeric values (date)
        )
    ), // All this Array logic means: Only show event posts if event_date >= Today Date
    'order' => 'ASC',
));
```

#### Common Parameters:
- **key**: The meta key to filter by.
- **value**: The value you're looking for in that meta key.
- **compare**: Comparison operator (e.g., `=`, `!=`, `LIKE`, `NOT LIKE`, `>`, `<`, etc.).
- **type**: The type of data being compared (e.g., `NUMERIC`, `CHAR`, `DATE`).
  

Meta queries are extremely powerful for filtering and retrieving posts based on various criteria stored in post meta fields.

---

#### `get_post_type()`
Retrieves the post type of the current post or of a given post.

---



❓❓❓❓❓❓ Conditional Tags ❓❓❓❓❓❓❓