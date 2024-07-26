<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '*#8T[BdGojx15i;G~=x62_nk#@~t+Sy}0T+lSzaT|%2HC>T;r$b2+03>A[PE5c[&' );
define( 'SECURE_AUTH_KEY',   'r[J$ff)ZJ#L5bK5M7Bnyp/P*?Lb*Gt~z5nDeR#U{-O:wSF+gA$V$Zk+TI`A5_=D]' );
define( 'LOGGED_IN_KEY',     'g7J_qRxb(lIFzIvVdXs5(z|l*u8n8%g!UQQQX>5RF[y#-sM*Hhc)!uKOJ]KMw0Of' );
define( 'NONCE_KEY',         '5/.g[!Sv=DjSxo[YH)AD.kTrv*$riz^_~eld1M%ZCS-0Xi5nV<P0& ;RWA(<oT%f' );
define( 'AUTH_SALT',         'Hh,Sq.A?LlOFzFVDvmd:Y4;;;.usIx=}%Z!+FgU#z*sO]li C~tF!c]5}<f?^q>e' );
define( 'SECURE_AUTH_SALT',  '4:@4E>Z:C~l1x~rqwj.rJM?Fg<4 |.4_33$uTWGa_mdc_/e{oo+[$2TnxuVxp}C=' );
define( 'LOGGED_IN_SALT',    'O,hf*$bI:<+D5y~Q4Obk^RQA<|QC`+H*dKW?OfNX?ysCbOp%q2&*UFj,:R*OG?|z' );
define( 'NONCE_SALT',        'f)NjmTI^(|J} u]GfZa;79Um?iFLu#f&!|01tA,B{ m,J!zPW N<FAt)9l2Rdh=Z' );
define( 'WP_CACHE_KEY_SALT', 'SKW>6&^4OzqF?73q8Unt5n9R,^1_jlf>>ThWj1<^^S5KXs%>{6>qa,ITrXa=:x}b' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
