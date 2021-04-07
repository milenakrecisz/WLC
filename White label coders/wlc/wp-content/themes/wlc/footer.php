<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package wlc
 */

?>

	<footer id="colophon" class="footer">
			<div class="__popular">
				<div class="container">

					<h3> Popular links</h3>

					<div class="__link">
						<h3> Join UKALA </h3>
						 <img src="<?php echo get_template_directory_uri(); ?>/assets/img/vector_handshake.svg" alt="handshake">
					</div>

					<div class="__link">
						<h3> Search for a UKALA agent </h3>
						<img src="<?php echo get_template_directory_uri(); ?>/assets/img/vector-search.svg" alt="search">
					</div>

					<div class="__link">
						<h3> Contact us </h3>
						<img src="<?php echo get_template_directory_uri(); ?>/assets/img/vector-envelope.svg" alt="envelope">
					</div>
				</div>
			</div>
			<div class="__main">
				<div class="container">

				</div>
			</div>
			<div class="__legacy">
				<div class="container">

				</div>
			</div>

	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
