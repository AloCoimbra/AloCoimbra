<?
    include "pesquisa.html";
    require 'lib/QuickSQL.php';
    require 'lib/ImageClip.php';
    new QuickSQL('alocoimbra', 'root', 'root');
?>

<div class="right">
	<div class="head">Lista:</div>
    
    <div class="list" target="_blank" href="/detalhes/<?= $aluguer['ID']?>">
        <? foreach ($ordens->Find('*','') as $ordem) { ?>
            <img src="<?=LoadImage('/images/', 'Filler1.jpg', 100, 100)?>">
            <div>
    			Alojamento: <?= $ordem['Tipo'] ?><br>
                Zona: <?= $ordem['Zona'] ?><br>
                Morada: <?= $ordem['Morada'] ?><br>
                Sexo: <?= $ordem['Sexo'] ?><br>
            	Preço: <?= $aluguer['Preco_mes'] ?>€<br>
            </div> 
        <? } ?>
    </div>
</div> 
 
        
