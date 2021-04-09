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
define( 'DB_NAME', 'database_wp' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('FS_METHOD', 'direct');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'XF+*&PV TFOqi0+9pNb2v%Z;L8>=Fs1f5fF0aZ_}~G;uM@#9x8e2hLFhjbM_<.Or');
define('SECURE_AUTH_KEY',  '<AfQ|<dIv|^/s:<QrYP>Fekw ^1R%Pyu-t40cm={)xO%xz^D-}V+@]$|?^Kt!f|{');
define('LOGGED_IN_KEY',    'NWc2;f!`4~@kxf45dJ[DO{wCv|@.bNub (CJ!dYpQLkE+c0!Z8Lmt%RR[l90UWL;');
define('NONCE_KEY',        'w}si#FE;$*=bIx:K>FZWmJ-AI<$3^r1<L;|XK+!zbGw.dn{j@lW6mH7p }i*** <');
define('AUTH_SALT',        '-40++(i`X^`M{H+-;np>M|R({|8V(R3(-waz(}C{H1M-Izjn{Htl#I|[tf(+x(j{');
define('SECURE_AUTH_SALT', 'f5E~w|}anJIG(r6UR[=1# dSmF`xO;UVq_]*^L<=>qM9w|Q@I4WZoA+Z2M%9($9F');
define('LOGGED_IN_SALT',   '14ZF!)]EP7Fc%%olcb_5@ 6Mi.,*jJ`J+y?fCZKxxz?45G[^RiX|06uv;cZL~+UF');
define('NONCE_SALT',       '!vc:e>W-7.X36PuCI~t<B{sBY #}=Y@O#c~V oN|T]n6EL---Zt%%DTLNoN<x>vR');
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
