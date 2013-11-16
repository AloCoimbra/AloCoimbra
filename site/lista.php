<?
    include "pesquisa.html";
?>

<script>
	function detalhes($aux){
		var win=window.open('detalhes?id='+$aux, '_blank');
  		win.focus();
	}
</script>

<div class="right">
	<div class="head">Lista:</div>
    
    <div class="list" onclick="detalhes(<?= $aluguer['ID'] ?>)">
        <? foreach ($ordens->Find('*','') as $ordem) { ?>
            <img src="images/Filler1.jpg">
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
 
        
