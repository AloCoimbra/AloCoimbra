<?
	require 'ImageResizer.php';
	
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