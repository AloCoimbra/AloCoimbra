<?
    require 'pesquisa.html';
    require 'lib/ImageClip.php';
?>

<div class="right">
	<div class="head">Lista:</div>
    <? foreach ($entradas->Find('*','') as $entrada) { ?>
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
	<? } ?>
</div> 
 
        
