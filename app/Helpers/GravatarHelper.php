<?php
namespace App\Helpers;



/**
 * gravatar image class
 * 
 */

class GravatarHelper
{
	/**
 * validate gravatar
 * 
 * check if the email has any gravatar or not
 * 
 * @param string $email Email of the user
 * @return boolean true, if there is an image, otherwise false
 */

	public static function validate_gravatar($email){
		$hash = md5($email);
		$uri = 'http://www.gravatar.com/avatar/' .$hash. '?d=404';
		$headers = @get_headers($uri);
		if (!preg_match("|200|", $headers[0])) {
			$has_valid_avatar = FALSE;
		}else {
			$has_valid_avatar = TRUE;

		}
		return $has_valid_avatar;
	}

/**
 * gravatar image
 * 
 * get the avatar image from an email address
 * 
 * @param string $email Email of the user
 * @param integer $size , size of the image
 * @param string $d, type of image, if not the gravatar image
 * @param string gravatar image URL
 */


	public static function gravatar_image($email, $size=0, $d="")
	{
		$hash = md5($email);
		$image_url = 'http://www.gravatar.com/avatar/' .$hash. '?s=' .$size. '&d='.$d;
		return $image_url;
	}
	
}