<?
    session_start();

    if ($_SESSION['logged']) {
		require '../database.php';

		$id = @((int) $_POST['ID']);
		$args = array();
		$aluguers->Delete("WHERE Ordem=$id");

		foreach ($ordens->Columns() as $key)
			$args[$key] = @mysql_real_escape_string($_POST[$key]);

		if ($id >= 0)
			$ordens->Update($args, "WHERE ID=$id");
		else
			$id = $ordens->Insert($args);

		for ($i=0; @($_POST['Alojamento' . $i]); $i++) { 
			$args = array();
			$args['Ordem'] = $id;

			foreach ($aluguers->Columns() as $key)
				$args[$key] = @mysql_real_escape_string($_POST[$key . $i]);

			$aluguers->Insert($args);
		}
	}

	header('Location: /admin/');
?>