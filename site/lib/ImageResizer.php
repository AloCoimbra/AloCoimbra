<?
	class ImageResizer {
		function __construct($file) {
			$file = $_SERVER['DOCUMENT_ROOT'] . $file;
		  	$image_info = getimagesize($file);
		  	$this->image_type = $image_info[2];

		  	if ( $this->image_type == IMAGETYPE_JPEG )
		     	$this->setImage(imagecreatefromjpeg($file));
		  	elseif ( $this->image_type == IMAGETYPE_GIF )
		     	$this->setImage(imagecreatefromgif($file));
		  	elseif ( $this->image_type == IMAGETYPE_PNG )
		     	$this->setImage(imagecreatefrompng($file));
		}
		
		function setImage($img) {
			$this->height = imagesy($img);
			$this->width = imagesx($img);
			$this->image = $img;
		}


		// Output
		function save($file, $image_type = IMAGETYPE_JPEG, $quality=100, $permissions=null) {
			$file = $_SERVER['DOCUMENT_ROOT'] . $file;

			if ($image_type == IMAGETYPE_JPEG)
				imagejpeg($this->image, $file, $quality);
			elseif ($image_type == IMAGETYPE_GIF)
				imagegif($this->image, $file);
		   	elseif ($image_type == IMAGETYPE_PNG )
				imagepng($this->image, $file);

		   	if ($permissions != null)
				chmod($file, $permissions);
		}

		function output($image_type = IMAGETYPE_JPEG) {
		   if( $image_type == IMAGETYPE_JPEG )
		      imagejpeg($this->image);
		   elseif ( $image_type == IMAGETYPE_GIF )
		      imagegif($this->image);
		   elseif ( $image_type == IMAGETYPE_PNG )
		      imagepng($this->image);
		}


		// Resizing
		function maxSize($width, $height) {
			$ratio = min($width / $this->width, $height / $this->height, 1);
			$this->scale($ratio);
		}

		function scale($scale) {
			if ($scale != 1) {
				$height = $this->height * $scale;
				$width = $this->width * $scale;
				$this->resize($width, $height);
			}
		}

		function resize($width, $height) {
			$resized = imagecreatetruecolor($width, $height);
			imagecopyresampled($resized, $this->image, 0, 0, 0, 0, $width, $height, $this->width, $this->height);
			
			$this->setImage($resized);
		} 
		
		
		// Crop
		function cropSize($width, $height) {
			$w = $width / $this->width;
			$h = $height / $this->height;
			$ratio = min(max($w, $h), 1);
			
			$this->center($width / $ratio, $height / $ratio);
			$this->scale($ratio);
		}
		
		function center($width, $height) {
			$x = ($this->width - $width) / 2;
			$y = ($this->height - $height) / 2;
			$this->crop($width, $height, $x, $y);
		}
		
		function crop($width, $height, $x, $y) {
			$cropped = imagecreatetruecolor($width, $height);
			imagecopy($cropped, $this->image, 0, 0, $x, $y, $this->width, $this->height);
			
			$this->setImage($cropped);
		}
	}
?>