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

define( 'DB_NAME', "cm-child" );


/** MySQL database username */

define( 'DB_USER', "root" );


/** MySQL database password */

define( 'DB_PASSWORD', "" );


/** MySQL hostname */

define( 'DB_HOST', "localhost" );


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

define( 'AUTH_KEY',         'tgu(I0TC59KK}4htA.S4T>(avH#?js$DR[W/E%hjso^B2r_8IR1bJAr3A~^{7)h=' );

define( 'SECURE_AUTH_KEY',  'i}DP|oJeN9,[2r*L*h|h:yPhWR(y]Z;EPmHo{c`(e*3sfHBV|YSdr^dmIi]fVDhD' );

define( 'LOGGED_IN_KEY',    'q))>|9cl9!tH-DfCiOWoP8Kyib*L#Fk5[,_;n/L)! fdrP[z{4#ONqgVh2k6Y6^D' );

define( 'NONCE_KEY',        'mR#Vc|17RUii!-3(Gj@%[imWq#Fa_:[Db}?!=VNCDKG>B&1zZR2/WCIGZeLB-F%3' );

define( 'AUTH_SALT',        'D,^QSM1wM?oc#[C).gAz[;3H&~sBKDRGt^#{DTM!@xTusA?cPl>@{UX*SFj/`nw$' );

define( 'SECURE_AUTH_SALT', ')?c[.73|8a>H`e}(EFbvk#dwAs7n}-T#wlonl*PRTPD#,;p/@};?@kRyl245a5`B' );

define( 'LOGGED_IN_SALT',   'J]WCCjdirrdp&Sl_Xo87W1.puFF!Xi-/*s<~acm&%mskfs<2<u9KLS#C}@,6Z8: ' );

define( 'NONCE_SALT',       'Z<8C@NNh.OK::fVDkGHf_,~199CAP}t=5|hxMRzd1,D}:f,XwhB!t*n2rs?.dgeL' );


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

