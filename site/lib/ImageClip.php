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

		if (!file_exists($_SERVER['DOCUMENT_ROOT'] . $result)) {
			$file = new ImageResizer($dir . $name);
			$file->cropSize($width, $height);
			$file->save($result);
		}

		return $result;
	}
?>