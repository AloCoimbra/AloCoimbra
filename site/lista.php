<?
    require 'pesquisa.html';
    require 'lib/ImageClip.php';
?>

<div class="right">
	<div class="head">Lista:</div>
    
    <div class="list">
        <? foreach ($ordens->Find('*','') as $ordem) { ?>
            <a target="_blank" href="/detalhes/<?=$ordem['ID'] + 1?>">
                <img src="<?=LoadImage('/images/', 'Filler1.jpg', 100, 100)?>">
                <div>
        			Alojamento: <?= $ordem['Tipo'] ?><br>
                    Zona: <?= $ordem['Zona'] ?><br>
                    Morada: <?= $ordem['Morada'] ?><br>
                    Sexo: <?= $ordem['Sexo'] ?><br>
                	Preço: <?= $aluguer['Preco_mes'] ?>€<br>
                </div>
            </a>
        <? } ?>
    </div>
</div> 
 
        
