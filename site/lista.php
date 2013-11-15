<?
    include "pesquisa.html";
?>

<script>
	function detalhes(){
		var win=window.open('http://google.com', '_blank');
  		win.focus();
	}
</script>

<div class="right">
	<div class="head">Lista:</div>
    
    <? foreach ($aluguers->Find('*','') as $aluguer) { ?>
    
        <br>
        <div class="lista" onclick="detalhes()">
            <div id = "foto">
                <img src="images/Foto.png" alt="Foto">
            </div>
            <div style="margin-left:150px;">
                
                <? foreach ($ordens->Find('*','Where ID = '. $aluguer['Ordem']) as $ordem) {}?>

                Zona: <?= $ordem['Zona'] ?><br>
                Morada: <?= $ordem['Morada'] ?><br>
                Sexo: <?= $ordem['Sexo'] ?><br>
            	Preço:<?= $aluguer['Preco_mes'] ?>€<br>
            </div> 
        </div>
     <? } ?>

    <br>

</div> 
 
        
