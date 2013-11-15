<?
    include "pesquisa.html";
    require 'lib/QuickSQL.php';
    require 'lib/ImageClip.php';
    new QuickSQL('alocoimbra', 'root', 'root');
?>

<script>
	function detalhes(){
		var win=window.open('http://google.com', '_blank');
  		win.focus();
	}
</script>

<div class="right">
	<div class="head">Lista:</div>
    
    <? foreach ($ordem->Find('*','') as $casa) { ?>
    
        <br>
        <div class="lista" onclick="detalhes()">
            <div id = "foto">
                <img src="images/Foto.png" alt="Foto">
            </div>
            <div style="margin-left:150px;">
                Zona: <?= $casa['Zona'] ?><br>
                Morada: <?= $casa['Morada'] ?><br>
                Sexo: <?= $casa['Sexo'] ?><br>
            	Preço:
            </div> 
        </div>
     <? } ?>

    <br>

</div> 
 
        
