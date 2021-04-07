<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package wlc
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="entry-header" style="background-image: url('<?php the_post_thumbnail_url(); ?>'); background-size: cover; background-position: center; background-repeat: no-repeat;)">
		<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
	</div><!-- .entry-header -->
	<div class="entry-content">
		<div class="container">
			 <h2> <?php the_title(); ?> </h2>
			 <div class="article-content"> <?php the_content(); ?> </div>
			 <div class="article-sidebar"> <?php dynamic_sidebar( 'sidebar-1' ); ?> </div>
		</div>
	</div><!-- .entry-content -->

</article><!-- #post-<?php the_ID(); ?> -->

<div class="footer">
	<?php get_footer(); ?>
</div>
