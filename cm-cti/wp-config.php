<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'cm-cti' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         's?8dmy@e<?-gOGS7#}D;lNdI|oW2D527}$F~0h^>h*&$fpl9mkCmA?f4,S^3SysC' );
define( 'SECURE_AUTH_KEY',  '/<|M;5I*#Oy|y{Z@>RzeRFG>a%-Y}sryv}6qZu&{CU_:|{k]-wpT^~5@in~3phAI' );
define( 'LOGGED_IN_KEY',    '@<HHuW*8?E|3-$|u~IE3Az0LSoi-+.RpS:XHrzibA*HRYjk,tB)-dy#}|f&Z I:{' );
define( 'NONCE_KEY',        'J/jP^F^+>z{XVw4,.-W?wD.1k6]K]@%3 ,;Ac}l}9eTO<+opPl`3xj&t1]iF!JC<' );
define( 'AUTH_SALT',        'XXE14=9hC/jN:hWVRILc=(tq;^!NZm?mwi{g_whdj#G^O/%Lkxq=cKtLG8.Z]@9%' );
define( 'SECURE_AUTH_SALT', 'pl Lu&5c=S^,vodl4&JL3L=06!b{RQ_M+P9$>D++Y 4UiLeR]#,(]@P/*GqUfP3T' );
define( 'LOGGED_IN_SALT',   'eGjndxh+$QXty3<RKz.]zH/YjFo01!3x8!.JGx`e:<uo!MW8EVWN%U+3n#CpE7Z,' );
define( 'NONCE_SALT',       '?WA%03EE{&0l.(dlHg-?kGJs2I38P7xuK8wJ;OOv?2/3z_MlGt[juB6H]p*s7?|x' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
