<? include "pesquisa.html";
    require 'lib/QuickSQL.php';
    require 'lib/ImageClip.php';
    new QuickSQL('alocoimbra', 'root', 'root');
?>
        
<div class="right">
	<div class="head">Lista:</div>

    <div class="lista">
    	<? foreach ($aluguers->Find('*', '') as $aluguer) { ?>
	    	<div>
	    		<img src="images/Foto.png">
	    	</div>
	    <? } ?>
    </div>
</div>