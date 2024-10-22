❓❓❓❓❓ Conditional Tags 
❓❓❓❓❓ Difference between actions & filters

---

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

#### `get_pages();`
Retrieves an **array** of pages (or hierarchical post type items).  

*Very similar to `wp_list_pages();`. The only difference is that `wp_list_pages();` --> will handle <u>outputting the pages onto the screen</u>, whereas `get_pages();` --> just returns the pages in memory.*

#### `pagination_list()`
Create pagination in posts;

#### `paginate_links()`
Retrieves paginated links for archive post pages.
❗️This is general WP pagination & only works with default queries, that WP makes on its own tied to the current URL.❗️

---

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

---

#### `get_post_type()`
Retrieves the post type of the current post or of a given post.

---



