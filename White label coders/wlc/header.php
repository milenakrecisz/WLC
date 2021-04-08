<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package wlc
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<div class="header-wrapper">
		<div class="header">
			<div class="container">
				<div class="logo">
					<?php the_custom_logo(); ?>
				</div>
				<div class="cta-section">
					<a class="__btn-secondary" href="#"> Find a UKALA agent</a>
					<a class="__btn-secondary" href="#"> Join UKALA</a>
					<a class="__btn-primary" href="#"> Log in</a>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="menu-glowne">
				<?php
if (has_nav_menu('wlc-menu'))
{
    wp_nav_menu(array(
        'theme_location' => 'wlc-menu',
    ));
}
?>
			</div>
			<div class="searchBarContainer">
				<form role="search" method="get" id="searchform" class="searchform" action="/">
					<input class="search-input" type="text" value="" name="s" id="s" placeholder="Search..." />
					<button type="submit" id="searchsubmit" />
					 <img src="<?php echo get_template_directory_uri(); ?>/assets/img/icon-search.svg" alt="search" width="20px" height="20px">
					</button>
				</form>
			</div>
		</div>
	</div>
<?php wp_body_open(); ?>
<div id="page" class="site">
