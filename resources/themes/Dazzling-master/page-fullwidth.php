<?php
/**
 * Template Name: Content - Full Width
 *
 * This is the template that displays full width homepage without sidebar
 *
 * @package dazzling
 */

get_header(); ?>

<div class="header-title">
	<div class="container">
		<div id="primary" class="content-area col-sm-12 col-md-12">
			<h1 class="entry-title"><?php the_title(); ?></h1>
		</div>
	</div>
</div>

<div class="container">
<?php the_breadcrumb(); ?>
	<div id="primary" class="content-area col-sm-12 col-md-12">
		<main id="main" class="site-main" role="main">

			<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'content', 'page' ); ?>

				<?php
					// If comments are open or we have at least one comment, load up the comment template
					if ( comments_open() || '0' != get_comments_number() ) :
						comments_template();
					endif;
				?>

			<?php endwhile; // end of the loop. ?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php get_footer(); ?>
