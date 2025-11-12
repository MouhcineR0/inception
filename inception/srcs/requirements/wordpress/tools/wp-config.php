<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv("WORDPRESS_DB_NAME") );

/** Database username */
define( 'DB_USER', getenv("WORDPRESS_DB_USER") );

/** Database password */
define( 'DB_PASSWORD', getenv("WORDPRESS_DB_PASSWORD") );

/** Database hostname */
define( 'DB_HOST', getenv("WORDPRESS_DB_HOST") );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'hLTl}w8$LR$~lbU{`T379ny_$N?tlWO<>A/8#lhU:VW<%Js%).k<7>1k~:;&cvR=' );
define( 'SECURE_AUTH_KEY',  'HN`tO[=lbI>mr}9:^gy7?ENt@u}UCZ><d]XVgp0Ufb?vgjcv7udtvtY7-{cs~l?O' );
define( 'LOGGED_IN_KEY',    'GlM!U>qzv<IhPG1!s5cRk]TxFU-:g,W8<jZ</h0Z|~#?I Zy1FD@lAP|QA-Tt<*j' );
define( 'NONCE_KEY',        'DTjxU 7=U-vf<8Bn.E[<YSvH&OmMJM~D_Wpl%mD/LZK!@8D)(`T2),` x9(ipS9C' );
define( 'AUTH_SALT',        '^LdBehc$`Zs*@7QV5x50mgMC1H|_E4:pkqy;2a=U7n>$:bzx#`{QIe}fb+f$>Zd+' );
define( 'SECURE_AUTH_SALT', '0-4L/NT6Z})%x~4MoyX~5I%/s5PTVVqyM|gIIt$B*/+;pd^%nf1Y#tTvyl*?Unc)' );
define( 'LOGGED_IN_SALT',   'Fe/We?~7c7tN^/88b8s2B1T-hJpnrZ]7a/.oI,P.zEi_W5c^m=2{QKJOrIFM]e @' );
define( 'NONCE_SALT',       'U[|-Nv,ts=H`m/x3 1xT^igCiU%M8y7w|%W0?kEIN@&[:P%( !a{!SWEePGzTv#k' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
