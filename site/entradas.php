<?
    require_once 'database.php';
    require_once 'lib/ImageClip.php';

    if (count($_POST) == 0)
        $_POST = array(
            'Quarto' => 1,
            'Apartamento' => 1,
            'Residencia' => 1,
            'Republica' => 1
        );

    function getInt($key, $default=0) {
        $value = @($_POST[$key]);
        return $value != '' ? @((int) $value) : $default;
    }

    function typeFilter($type) {
        return @($_POST[$type]) ? " OR Tipo='$type'" : '';
    }

    function andFilter($key, $oper) {
        $value = @($_POST[$key]);
        return $value != '' ? " AND {$key}{$oper}\"" . mysql_real_escape_string($value) . '"': '';
    }

    function equalFilter($key) {return andFilter($key, '=');}
    function diffFilter($key) {return andFilter($key, '!=');}

    $max = getInt('MaxPreco', 750);
    $min = getInt('MinPreco', 150);
    $meses = getInt('Meses');

    $types = typeFilter('Quarto') . typeFilter('Apartamento') . typeFilter('Residencia') . typeFilter('Republica');
    $types = $types != '' ? substr($types, 4) : 'Tipo = "Impossible"';

    $filter = "WHERE Min_meses<={$meses} AND MaxPreco<={$max} AND MinPreco>={$min} AND ($types)";
    $filter .= diffFilter('Sexo') . equalFilter('Zona');
    $filter .= equalFilter('Mobilado') . equalFilter('Lavagem_roupa');
    $filter .= equalFilter('Agua') . equalFilter('Luz') . equalFilter('Gaz') . equalFilter('Internet');
    $filter .= diffFilter('Senhorio') . equalFilter('Visitas') . equalFilter('Animais');

    $off = getInt('Set') * 10;
    $results = $entradas->Find('*', $filter . " LIMIT {$off},10");

    if ($off == 0 && count($results) == 0) {
        ?>
            <a>
                <center>
                    <h1>Não foram encontrados resultados que correspondam à sua procura.</h1>
                </center
            </a>
        <?
    } else {
    	foreach ($results as $entrada) { ?>
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
    }
?>