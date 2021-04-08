<?php
/**
 * Plugin Name: Member Widget
 * Description: A widget with a CTA for new members
 * Version: 1.0
 * Author: Milena
 */

class Member_Widget extends WP_Widget
{

    function __construct()
    {

        $widget_options = array(
            'classname' => 'member_widget',
            'description' => 'Add a call to action box with text.'
        );

        parent::__construct('member_widget', 'Member', $widget_options);

    }

    //function to output the widget form
    function form($instance)
    {

        $title = !empty($instance['title']) ? $instance['title'] : '';
        $articleTitle = !empty($instance['articleTitle']) ? $instance['articleTitle'] : 'Article Title';
        $articleEmphasis = !empty($instance['articleEmphasis']) ? $instance['articleEmphasis'] : 'Bold text';
        $articleContent = !empty($instance['articleContent']) ? $instance['articleContent'] : 'Content Body';

        //cta
        $ctaHeading = !empty($instance['ctaHeading']) ? $instance['ctaHeading'] : 'CTA Heading';
        $ctaSubHeading = !empty($instance['ctaSubHeading']) ? $instance['ctaSubHeading'] : 'CTA Sub Heading';

        $buttontext = !empty($instance['buttontext']) ? $instance['buttontext'] : 'Join now';
        $buttonlink = !empty($instance['buttonlink']) ? $instance['buttonlink'] : '#';

        $paragraph = !empty($instance['paragraph']) ? $instance['paragraph'] : 'Already a member?';
        $loginLinkText = !empty($instance['loginLinkText']) ? $instance['loginLinkText'] : 'Log in';
        $loginLink = !empty($instance['loginLink']) ? $instance['loginLink'] : '#';

?>

  <p>
   <label for="<?php echo $this->get_field_id('title'); ?>">Title:</label>
   <input class="widefat" type="text" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" value="<?php echo esc_attr($title); ?>" /></p>

   <p>
    <label for="<?php echo $this->get_field_id('articleTitle'); ?>">Article Title:</label>
    <input class="widefat" type="text" id="<?php echo $this->get_field_id('articleTitle'); ?>" name="<?php echo $this->get_field_name('articleTitle'); ?>" value="<?php echo esc_attr($articleTitle); ?>" /></p>

  <p>
   <label for="<?php echo $this->get_field_id('articleEmphasis'); ?>">Bold content:</label>
   <textarea class="widefat" type="textarea" id="<?php echo $this->get_field_id('articleEmphasis'); ?>" name="<?php echo $this->get_field_name('articleEmphasis'); ?>" > <?php echo esc_textarea($articleEmphasis); ?> </textarea></p>

 <p>
  <label for="<?php echo $this->get_field_id('articleContent'); ?>">Content Body:</label>
  <textarea class="widefat" type="textarea" id="<?php echo $this->get_field_id('articleContent'); ?>" name="<?php echo $this->get_field_name('articleContent'); ?>" > <?php echo esc_textarea($articleContent); ?> </textarea></p>

  <h2> CTA Box</h2>
  <p>
   <label for="<?php echo $this->get_field_id('ctaHeading'); ?>">Heading:</label>
   <input class="widefat" type="text" id="<?php echo $this->get_field_id('ctaHeading'); ?>" name="<?php echo $this->get_field_name('ctaHeading'); ?>" value="<?php echo esc_attr($ctaHeading); ?>" /></p>

  <p>
    <label for="<?php echo $this->get_field_id('ctaSubHeading'); ?>">Sub Heading:</label>
    <input class="widefat" type="text" id="<?php echo $this->get_field_id('ctaSubHeading'); ?>" name="<?php echo $this->get_field_name('ctaSubHeading'); ?>" value="<?php echo esc_attr($ctaSubHeading); ?>" /></p>

  <p>
   <label for="<?php echo $this->get_field_id('buttontext'); ?>">Button text:</label>
   <input class="widefat" type="text" id="<?php echo $this->get_field_id('buttontext'); ?>" name="<?php echo $this->get_field_name('buttontext'); ?>" value="<?php echo esc_attr($buttontext); ?>" /></p>

  <p>
   <label for="<?php echo $this->get_field_id('buttontext'); ?>">Button text:</label>
   <input class="widefat" type="text" id="<?php echo $this->get_field_id('buttontext'); ?>" name="<?php echo $this->get_field_name('buttontext'); ?>" value="<?php echo esc_attr($buttontext); ?>" /></p>

  <p>
  <label for="<?php echo $this->get_field_id('buttonlink'); ?>">Your link:</label>
  <input class="widefat" type="text" id="<?php echo $this->get_field_id('buttonlink'); ?>" name="<?php echo $this->get_field_name('buttonlink'); ?>" value="<?php echo esc_attr($buttonlink); ?>" /></p>

  <p>
   <label for="<?php echo $this->get_field_id('paragraph'); ?>">Bottom paragraph:</label>
   <input class="widefat" type="text" id="<?php echo $this->get_field_id('paragraph'); ?>" name="<?php echo $this->get_field_name('paragraph'); ?>" value="<?php echo esc_attr($paragraph); ?>" /></p>

  <p>
   <label for="<?php echo $this->get_field_id('loginLinkText'); ?>">Log in link text:</label>
   <input class="widefat" type="text" id="<?php echo $this->get_field_id('loginLinkText'); ?>" name="<?php echo $this->get_field_name('loginLinkText'); ?>" value="<?php echo esc_attr($loginLinkText); ?>" /></p>

  <p>
   <label for="<?php echo $this->get_field_id('loginLink'); ?>">Log in link:</label>
   <input class="widefat" type="text" id="<?php echo $this->get_field_id('loginLink'); ?>" name="<?php echo $this->get_field_name('loginLink'); ?>" value="<?php echo esc_attr($loginLink); ?>" /></p>

  <?php
    }

    //function to define the data saved by the widget
    function update($new_instance, $old_instance)
    {
        $instance = $old_instance;
        $instance['title'] = strip_tags($new_instance['title']);
        $instance['articleTitle'] = strip_tags($new_instance['articleTitle']);
        $instance['articleEmphasis'] = strip_tags($new_instance['articleEmphasis']);
        $instance['articleContent'] = strip_tags($new_instance['articleContent']);

        // CTA Elements
        $instance['ctaHeading'] = strip_tags($new_instance['ctaHeading']);
        $instance['ctaSubHeading'] = strip_tags($new_instance['ctaSubHeading']);

        $instance['buttontext'] = strip_tags($new_instance['buttontext']);
        $instance['buttonlink'] = strip_tags($new_instance['buttonlink']);

        $instance['paragraph'] = strip_tags($new_instance['paragraph']);
        $instance['loginLinkText'] = strip_tags($new_instance['loginLinkText']);
        $instance['loginLink'] = strip_tags($new_instance['loginLink']);

        return $instance;

    }

    //function to display the widget in the site
    function widget($args, $instance)
    {
        //define variables
        $title = apply_filters('widget_title', $instance['title']);
        $articleTitle = $instance['articleTitle'];
        $articleEmphasis = $instance['articleEmphasis'];
        $articleContent = $instance['articleContent'];

        $ctaHeading = $instance['ctaHeading'];
        $ctaSubHeading = $instance['ctaSubHeading'];

        $buttontext = $instance['buttontext'];
        $buttonlink = $instance['buttonlink'];

        $paragraph = $instance['paragraph'];
        $loginLinkText = $instance['loginLinkText'];
        $loginLink = $instance['loginLink'];

        //output code

?>
 <div class="container"> <?php
        echo $args['before_widget'];
?>

 <?php if (!empty($title))
        {
            echo $args['before_title'] . $title . $args['after_title'];
        }; ?>

 <div class="members-content">
   <?php echo '<h3 class="__articleTitle">' . $articleTitle . '</h3>'; ?>
   <?php echo '<p class="__emphasis">' . $articleEmphasis . '</p>'; ?>
   <?php echo '<p class="__content">' . $articleContent . '</p>'; ?>
 </div>


 <div class="cta">

  <?php
        echo '<h3 class="__ctaHeading">' . $ctaHeading . '</h3>';
        echo '<h5 class="__ctaSubHeading">' . $ctaSubHeading . '</h5>';
        echo '<a class="btn-round" href="' . $buttonlink . '">' . $buttontext . '</a>'; ?>

  <div class="inline"> <?php
        echo '<p>' . $paragraph . '</p>';
        echo '<a href="' . $loginLink . '">' . $loginLinkText . '</a>';
?>
  </div>
 </div>

 <?php
        echo $args['after_widget'];
?> </div> <?php
    }
}

//function to register the widget
function register_member_widget()
{

    register_widget('Member_Widget');

}
add_action('widgets_init', 'register_member_widget');
