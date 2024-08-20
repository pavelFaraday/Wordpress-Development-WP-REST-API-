- WordPress only uses the `single.php` file for **individual posts**.
- For **individual pages** WordPress looks in theme folder for a file name to `page.php`.
---

#### `wp_head()'
This function let's WordPress be in control of head section.
> **Example:** Plugins and WordPress core use this function to insert crucial elements into your document (e.g., scripts, styles, and meta tags). Always put wp_head() just before the closing tag of your theme (usually in **header.php**):


#### `functions.php`
`functions.php` file as a bit more private. This is our behind the scenes file. This is where we can have a conversation with the WordPress system itself.
> **Example:** When we want to tell WordPress to load our CSS file.


#### `add_action()`
Actions are the hooks that the WordPress core launches at **specific points during execution, or when specific events occur**. Plugins can specify that one or more of its PHP functions are executed at these points, using the Action API.

>**Example:** `add_action('wp_enqueue_scripts')` So this is our way of saying, hey, WordPress, I want to load some CSS and JavaScript files. 
> - 1st argument: The name of the action to add the callback to. 
> - 2nd argument: name of a our <u>custom</u> function (callback function) that we want to run.


--- 

## Actions

#### `wp_enqueue_scripts` - An Action
An action which tells wordpress load and enqueue CSS & JS files.

#### `after_setup_theme` - An Action

This hook is called during each page load, after the theme is initialized. It is generally used to perform basic setup, registration, and init actions for a theme.

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

#### `get_the_ID()`
Retrieves the ID of the current item (post or page) in the WordPress Loop.
> **Example:** `<?php echo get_the_ID(); ?> // 16 integer` 

#### `wp_get_post_parent_id()`
Returns the ID of the post’s parent, if it exists, otherwise returns 0.

#### `get_permalink()`
Retrieves the full permalink for the current post or post ID.

