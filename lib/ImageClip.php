<?
	require 'ImageResizer.php';

	function UploadImage($dir, $id, $maxWidth, $maxHeight) {
		$file = $_FILES[$id];
		$name = $file['name'];
		
		if ($name and preg_match('/\.(jpe?g|png|gif)$/', $name)) {
			$img = new ImageResizer($file['tmp_name']);
			$img->maxSize($maxWidth, $maxHeight);
			$img->save($dir . $name);
			return true;
		}
	}
	
	function LoadImage($dir, $name, $width, $height) {
		$result = $dir . "{$width}x{$height}/" . $name;
		$orig = $dir . $name;

		if (IsNewer($orig, $result)) {
			$file = new ImageResizer($orig);
			$file->cropSize($width, $height);
			$file->save($result);
		}

		return $result;
	}
	
	function IsNewer($a, $b) {
		$a = is_file($a) ? filemtime($a) : false;
		$b = is_file($b) ? filemtime($b): false;
		
		return !$b or $a and $a > $b;
	}
?>