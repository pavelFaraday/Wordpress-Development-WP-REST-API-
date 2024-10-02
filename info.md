## Actions

#### `wp_enqueue_scripts` - An Action
An action which tells wordpress load and enqueue CSS & JS files.

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

## Custom Post Types

In WordPress, a Custom Post Type (CPT) allows you to create and manage different types of content beyond the default types like Posts and Pages. Essentially, it's a way to extend WordPress’s functionality to handle content more suited to your needs.

#### Default Post Types in WordPress
By default, WordPress comes with a few built-in post types:

- Posts: Used for blog entries.
- Pages: Used for static content (e.g., About page).
- Attachments: Handles media uploads.
- Revisions: Tracks changes made to content.
- Menus: Used for navigation menus.
While these default types work for most cases, there are situations where you need more specific types of content, and that’s where CPTs come in.

#### What Is a Custom Post Type?
A Custom Post Type is a structure you can create to display unique types of content. For example, if you’re building a movie review website, you might want a "Movies" CPT where each entry contains a movie’s title, release date, and director. Similarly, a real estate site might have a "Properties" CPT with fields for location, price, and number of rooms.

#### Creating a Custom Post Type
You can create a CPT by adding custom code to your theme’s functions.php file or using a plugin like Custom Post Type UI. Here’s a simple code example to register a "Movies" custom post type:

```php
function university_post_types() {
    register_post_type('events',
        array(
            'public' => true,
            'show_in_rest' => true,
            'menu_icon' => 'dashicons-calendar-alt',
            'has_archive' => true,
            'rewrite' => array('slug' => 'Events'),
            'supports' => array('title', 'editor', 'thumbnail', 'custom-fields'),
            'labels' => array (
                'name' => __('Events'),
                'add_new_item' => 'Add New Event',
                'edit_item' => 'Edit Event',
                'all_items' => 'All Events',
                'singular_name' => __('Event')
            )
        )
    );
  }
  add_action('init', 'university_post_types');
```

#### Why Use Custom Post Types?
- Organization: Helps keep different content types separate, making your site more organized.
- Better Functionality: Each CPT can have its own custom fields, templates, and features.
- Tailored Admin Panel: You can create custom taxonomies (like categories and tags) and customize the WordPress admin interface for specific content.

#### Use Cases for Custom Post Types
- Portfolio: Showcasing individual projects or case studies.
- Testimonials: Displaying customer reviews or feedback.
- Products: Creating an e-commerce catalog.
- Events: Managing an event calendar.

Using Custom Post Types allows you to make WordPress even more flexible, adapting it perfectly to different types of content for custom websites.

---

## Must Use Plugins (MU-Plugins) in WordPress

In WordPress, "Must-Use Plugins" (also known as MU-Plugins) are special types of plugins that are automatically enabled for a site without needing to be manually activated. These plugins are different from regular plugins in the following ways:

Key Features of Must-Use Plugins:
1. **Automatic Activation:** Must-use plugins are automatically activated when placed in the mu-plugins directory. You cannot deactivate them through the WordPress admin dashboard.

2. **Special Directory:** MU-plugins are stored in a specific folder located at `wp-content/mu-plugins/`. This is separate from the standard plugin folder.

3. **Global Across Multisites:** For WordPress multisite installations, MU-plugins can be used across all sites in the network. This is especially useful for plugins that need to be applied universally, like security or performance-related plugins.

4. **No UI in Admin:** Must-use plugins don't appear in the standard "Plugins" section of the WordPress admin dashboard. Instead, they are listed under a separate "Must-Use" tab, if present.

5. **Use Cases:** They are typically used for essential functionality that should always be active, such as security features, caching systems, or specific custom code that needs to run regardless of other plugin activations.

6. **No Deactivation:** Since these plugins are managed manually by adding or removing files from the mu-plugins folder, they can't be turned off through the dashboard.

#### How to Add a Must-Use Plugin:
To add a must-use plugin, simply upload the PHP file (or a directory containing the plugin's files) into the wp-content/mu-plugins/ folder. The plugin will automatically be enabled.

This is commonly used by developers to ensure critical functionality is always enabled and cannot be accidentally disabled by admins.

---

## Custom Fields in WordPress

Custom fields in WordPress allow you to add extra information, or metadata, to your posts, pages, or custom post types. They are a flexible way to store additional data beyond the default content provided by WordPress. Here are the core concepts you should understand about custom fields:

#### 1. What Are Custom Fields?
Custom fields are key-value pairs used to store additional information about a post or page. WordPress stores this metadata in the `wp_postmeta` database table. For example, if you're building a real estate site, you could use custom fields to add details like price, location, and square footage to each property post.

**Key:** This is the label for the custom field (e.g., `property_price`).

**Value:** This is the actual data stored (e.g., $250,000).

#### 2. How Custom Fields Work
Custom fields work by assigning metadata to specific posts or pages. Each post can have multiple custom fields. You can use them to display additional data on the front end of your site or to handle backend logic.

For example, if you're building a movie review site, you could create custom fields for the rating, release year, and genre, which are then displayed on the post page.

#### 3. Creating and Managing Custom Fields
WordPress offers a built-in UI for custom fields in the post editor, but it's disabled by default in the Block Editor (Gutenberg). You can enable it by going to the options at the top-right corner (three-dot menu) and checking the "Custom Fields" option.

Alternatively, you can manage custom fields programmatically using functions `like add_post_meta()`, `get_post_meta()`, and `update_post_meta()`.

#### 4. Displaying Custom Fields on the Front End
To display the data from custom fields on your site, you'll need to edit your theme files. You can use the get_post_meta() function to retrieve and echo the custom field value in your template.

**Example:** 
```
<?php
    $price = get_post_meta(get_the_ID(), 'property_price', true);
    echo 'Price: ' . $price;
?>
```

This example retrieves the custom field with the key `property_price` and displays its value.

#### 5. Custom Fields in Themes and Plugins
Custom fields can be integrated into themes and plugins to extend functionality. Many WordPress themes, particularly premium ones, offer custom fields as part of their framework, letting you build rich content types without writing code. Popular plugins like Advanced Custom Fields (ACF), CMB2 (Custom Metaboxes 2) make it even easier to create, manage, and display custom fields with a more intuitive interface.

#### 6. Advanced Usage
You can also use custom fields in combination with:

Custom Post Types: Custom fields can be essential for adding metadata to custom post types like products, portfolios, or properties.
Querying Posts: You can query posts by custom fields using `WP_Query` with meta_query parameters, allowing you to create dynamic pages based on custom field data.

#### 7. Custom Field Types
With plugins like ACF, you can add different types of custom fields, such as text fields, numbers, date pickers, and even file uploads, which provide even more control over the data you're adding.

#### 8. Performance Considerations
Since custom fields are stored as post metadata, overloading posts with excessive custom fields or using them inefficiently can cause performance issues. You should ensure that the custom fields you use are necessary and optimized.

In summary, custom fields provide a powerful way to extend WordPress’s capabilities, enabling you to add custom metadata to your posts or pages, create dynamic templates, and build more complex websites without modifying the core WordPress code.

---

#### `is_post_type_archive()`
Determines whether the query is for an existing post type archive page.

**@params:** Post type or array of posts types to check against.

**@Return:** ***bool*** Whether the query is for an existing post type archive page.


#### `is_main_query(): bool`
Determines whether the query is the default/main/core, (default URL based) based query (NOT Custom Query). 

```php
function university_adjust_queries ($query) {
  if(!is_admin() AND is_post_type_archive('events') AND $query->is_main_query()){
    $query->set('posts_per_page', '1');
  }
}
add_action('pre_get_posts', 'university_adjust_queries');
```

---

❓❓❓❓❓❓ Conditional Tags ❓❓❓❓❓❓❓