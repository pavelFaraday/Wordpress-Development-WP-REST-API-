❓❓❓❓❓ Conditional Tags 
❓❓❓❓❓ Difference between actions & filters

---


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
Create pagination in posts;

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

#### `get_post_type()`
Retrieves the post type of the current post or of a given post.

---



