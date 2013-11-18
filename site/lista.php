<?
    require 'pesquisa.html';
    require 'lib/ImageClip.php';
?>

<div class="right">
	<div class="head">Lista:</div>
    <? foreach ($ordens->Find('*','') as $ordem) { ?>
        <div class="list">
            <a target="_blank" href="/detalhes/<?=$ordem['ID'] + 1?>">
                <img src="<?=LoadImage('/images/', 'Filler1.jpg', 100, 100)?>">
                <div class="list_text">
                	<div>Avaliação: XXXX</div>
                    <label><?= $ordem['Tipo'] ?></label><br>
                    Morada: <?= $ordem['Morada'] ?> (<?= $ordem['Zona'] ?>)<br>
                    Género: <?= $ordem['Sexo'] ?><br>
                    Preço: XXX€ a XXX€<br>
                </div>
            </a>
        </div>
	<? } ?>
</div> 
 
        
