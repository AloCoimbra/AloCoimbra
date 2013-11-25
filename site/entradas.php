<?
    require_once 'database.php';
    require_once 'lib/ImageClip.php';

    $off = @((int) $_GET['set']) * 10;
	foreach ($entradas->Find('*', 'limit ' . $off . ',10') as $entrada) { ?>
        <div class="list">
            <a target="_blank" href="/detalhes/<?=$entrada['ID'] + 1?>">
                <img src="<?=LoadImage('/images/', 'Filler1.jpg', 100, 100)?>">
                <div class="list_text">
                	<div><?= qualidade($entrada['Qualidade']) ?></div>
                    <label><?= $entrada['Tipo'] ?></label>
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
        </div>
<?
	}
?>