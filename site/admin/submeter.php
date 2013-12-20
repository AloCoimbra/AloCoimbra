<?
    session_start();

    if ($_SESSION['logged']) {
		require '../database.php';

		$id = @((int) $_POST['ID']);
		$aluguers->Delete("WHERE Ordem=$id");
		$args = array();

		// Ordem
		foreach ($ordens->Columns() as $key)
			$args[$key] = @mysql_real_escape_string($_POST[$key]);

		if ($id >= 0)
			$ordens->Update($args, "WHERE ID=$id");
		else
			$id = $ordens->Insert($args);

		// Aluguers
		for ($i=0; @($_POST['Alojamento' . $i]); $i++) { 
			$args = array();
			$args['Ordem'] = $id;

			foreach ($aluguers->Columns() as $key)
				$args[$key] = @mysql_real_escape_string($_POST[$key . $i]);

			$aluguers->Insert($args);
		}

		// Delete Imagens
		foreach ($imagens->Find('id', "WHERE Ordem=$id") as $entry) {
			if (@($_POST['ApagarImagem' . $entry['id']])) {
				$imageID = $entry['id'];
				$imagens->Delete("WHERE id=$imageID");

				unlink($_SERVER['DOCUMENT_ROOT'] . '/images/' . $imageID);
				@unlink($_SERVER['DOCUMENT_ROOT'] . '/images/100x100/' . $imageID);
				@unlink($_SERVER['DOCUMENT_ROOT'] . '/images/700x306/' . $imageID);
			}
		}


		// Upload Imagens
		$images = @($_FILES['imagens']);
		$allowed = array('image/jpg', 'image/jpeg', 'image/png', 'image/gif');

		if ($images) 
			for ($i=0; $i < count($images['name']); $i++)
				if ($images['error'][$i] == 0 && $images['size'][$i] <= 800000 && in_array($$images['type'][$i], $allowed)) {
					$imageID = $imagens->Insert(array('Ordem' => $id));
					move_uploaded_file($images['tmp_name'][$i], $_SERVER['DOCUMENT_ROOT'] . '/images/' . $imageID);
				}
	}

	header('Location: /admin/');
?>