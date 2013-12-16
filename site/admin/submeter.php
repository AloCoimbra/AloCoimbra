<?
	$id = @((int) $_POST['id']) - 1;
	$args = array();

	foreach ($ordens->Columns() as $key)
		$args[$key] = @mysql_real_escape_string($_POST[$key]);

	if ($id >= 0)
		$ordens->Update($args, "WHERE ID=$id");
	else
		$id = $ordens->Insert($args);
?>