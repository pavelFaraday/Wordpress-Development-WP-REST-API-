- WordPress only uses the `single.php` file for **individual posts**.
- For **individual pages** WordPress looks in theme folder for a file name to `page.php`.
---

#### `wp_head()'
This function let's WordPress be in control of head section.
> **Example:** Plugins and WordPress core use this function to insert crucial elements into your document (e.g., scripts, styles, and meta tags). Always put wp_head() just before the closing tag of your theme (usually in **header.php**):

---

#### `functions.php`
`functions.php` file as a bit more private. This is our behind the scenes file. This is where we can have a conversation with the WordPress system itself.
> **Example:** When we want to tell WordPress to load our CSS file.

---

#### `add_action()`
Actions are the hooks that the WordPress core launches at **specific points during execution, or when specific events occur**. Plugins can specify that one or more of its PHP functions are executed at these points, using the Action API.

>**Example:** `add_action('wp_enqueue_scripts')` So this is our way of saying, hey, WordPress, I want to load some CSS or JavaScript files. 
> - 1st argument: The name of the action to add the callback to. 
> - 2nd argument: name of a our <u>custom</u> function (callback function) that we want to run.

#### `wp_enqueue_style(`)
Registers the style if source provided (does NOT overwrite) and enqueues.

#### `get_stylesheet_uri()`
Automatically Retrieves stylesheet URI for the active theme.

The stylesheet file name must be 'style.css' which is appended to the stylesheet directory URI path.