<?
    require_once 'database.php';
    require_once 'lib/ImageClip.php';

    $off = @((int) $_GET['set']) * 10;
	foreach ($entradas->Find('*', 'limit ' . $off . ',10') as $entrada) { ?>
        <a href="/detalhes/<?=$entrada['ID'] + 1?>">
            <img src="<?=LoadImage('/images/', 'Filler1.jpg', 100, 100)?>">
            <div>
            	<span><?= qualidade($entrada['Qualidade']) ?></span>
                <h1><?= $entrada['Tipo'] ?></h1>
                <p><?= $entrada['Morada'] ?> (<?= $entrada['Zona'] ?>)</p>
                <p><?= $entrada['Sexo'] ?></p>
                <p><?
                    if ($entrada['MinPreco'] == $entrada['MaxPreco'])
                        echo $entrada['MinPreco'] . '€';
                    else
                        echo $entrada['MinPreco'] . '€ a ' . $entrada['MaxPreco'] . '€';
                ?></p>
            </div>
        </a>
<?
	}
?>