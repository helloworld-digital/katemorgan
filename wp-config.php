<?php
//The entry below were created by iThemes Security to disable the file editor
define( 'DISALLOW_FILE_EDIT', false );

//Do not delete these. Doing so WILL break your site.
define( 'WP_CONTENT_URL', 'http://174.121.78.227/~kmxmarketing/resources' );
define( 'WP_CONTENT_DIR', '/home/kmxmarketing/public_html/resources' );

/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'kmxmarke_wordpress');

/** MySQL database username */
define('DB_USER', 'kmxmarke_root');

/** MySQL database password */
define('DB_PASSWORD', ']0]{,ldo5k*-');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('DISALLOW_FILE_EDIT', false);

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'D/@kX?OgAZ^P(4HsN#;a%EfKcq`w!J,mB8.uRiUpt*Lzlo}I~[0T2SeF3<>vr9yn ');
define('SECURE_AUTH_KEY', 'b90ZtTjqIm*!GpCo/zBdR21uvUD(<r#?PVF~H]cl}i8.YO_KgME;S^$:3|XeL&wk ');
define('LOGGED_IN_KEY', 'y`TN9l1c2j(;P~0tCWi5zowJUMus_F.p%?KQ@XxdSrkhZevI#*])>3BV[&!n6A4q ');
define('NONCE_KEY', 'InU(wO4ks%#D~<f_M{L$J}xjQ:,oNP![R&c)Ctm*?qT@9iX;rZESveGW1.A0b2hB ');
define('AUTH_SALT', 'fY{e<ogC^BXOJ?~[:HSI.x>Rz#E3i);q|w`$r!s8jQ]y0v,4nU5AbuPVaG(ZlTF} ');
define('SECURE_AUTH_SALT', '$q.MeS5lm}?O]tYwD<dcz[C)o!/2y:~bJ41&_>iWu#jZUr`0EPv9gf*K{B7N3,^| ');
define('LOGGED_IN_SALT', '@nJkbid2;Oq[*l}P9>Co]|^6_t,z.B&`07:XFjR{hp1EmNrUAS$5)fHGaMTZ#I<s ');
define('NONCE_SALT', ':d@Gu_r5!g?S|bU#HWv}06<ztRCYJ2/Xq(Q~&cF{O`.$E)wf4PVZDn83Bp19m;ej ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'km_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
