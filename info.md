❓❓❓❓❓ Conditional Tags 
❓❓❓❓❓ Difference between actions & filters (`add_filter`)
❓❓❓❓ pre_get_posts hook.

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

#### `pagination_list()`
Create pagination in posts;

#### `paginate_links()`
Retrieves paginated links for archive post pages.
❗️This is general WP pagination & only works with default queries, that WP makes on its own tied to the current URL.❗️

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

> **Example:** `get_post_type_archive_link('events)`

#### `single_cat_title();`
Displays or retrieves page title for category archive.

#### `get_post_type()`
Retrieves the post type of the current post or of a given post.




