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
					<div class="logo">
						<img src="<?php echo get_template_directory_uri(); ?>/assets/img/logo_footer.svg" alt="logo">
					</div>
					<div class="columns-wrapper">
						<div class="footer-menu column">
								<h4> Quick links </h4>
								<?php
if (has_nav_menu('footer-menu'))
{
    wp_nav_menu(array(
        'theme_location' => 'footer-menu',
    ));
}
?>
								<p class="creator"> Website by <span> Websmart </span></p>
						</div>

						<div class="social column">
							<h4> Follow us </h4>
							<a href="#">
	  						<img src="<?php echo get_template_directory_uri(); ?>/assets/img/icon-facebook.svg" alt="facebook" width="25px" height="25px">
							</a>
							<a href="#">
	  						<img src="<?php echo get_template_directory_uri(); ?>/assets/img/icon-twitter.svg" alt="twitter" width="25px" height="25px">
							</a>
							<a href="#">
	  						<img src="<?php echo get_template_directory_uri(); ?>/assets/img/icon-linkedin.svg" alt="linkedin" width="25px" height="25px">
							</a>

						</div>

						<div class="column">
							<h4> Contact us</h4>
							<p> UKALA 2nd floor,<br>
								200 Union Street,<br>
								London,<br>
								SE1 0LX<br>
							</p>
							<p> info@ukala.org.uk <br>
							 020 7820 7900 </p>

						</div>
					</div>
				</div>
			</div>
			<div class="__legacy">
				<div class="container">
					<div class="legacy-menu">
						<?php
if (has_nav_menu('legacy-menu'))
{
    wp_nav_menu(array(
        'theme_location' => 'legacy-menu',
    ));
}
?>
					</div>
					<div class="copyright">
						<p> © UKALA  2019</p>
					</div>
				</div>
			</div>

	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
