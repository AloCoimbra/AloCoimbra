<?
    require 'lib/ImageClip.php';
    require 'database.php';

	$id = @((int) $_GET['id']) - 1;
	$ordem = $ordens->Pull('*', 'WHERE id=' . $id);

	if (!$ordem)
		include '404.html';
	else {
		$images = $imagens->Find('id', 'WHERE ordem=' . $id);

		function toggle($v) { 
			return $v == 1 ? "Sim" : "Não";
		}
?>

<link href="/css/image-slider.css" rel="stylesheet" type="text/css"/>
<script src="/js/image-slider.js" type="text/javascript"></script>

<div class="detalhes">
	<? if (count($images) > 0) { ?>
		<div id="sliderFrame">
		    <div id="slider">
		    	<? foreach ($images as $image) { ?>
		    		<img src="<?=LoadImage('/images/', $image['id'], 700, 306)?>"/>
		    	<? } ?>
		    </div>
		</div>
	<? } ?>

	<div class="right">
        <p><label>Géneros Aceites:</label> <?= $ordem['Sexo'] ?></p>
        <p><label>Alojamento:</label> <?= $ordem['Tipo']?></p>
        <p><label>Zona:</label> <?= $ordem['Zona']?></p>
        <p><label> Morada:</label> <?= $ordem['Morada']?></p>
    </div>

    <div class="list">
		<? foreach ($aluguers->Find('*', 'WHERE ordem=' . $id) as $aluguer) { ?>
	    	<a>
				<p><label>Tipo de Alojamento:</label> <?=$aluguer['Alojamento']?></p>
				<p><label>Qualidade do Quarto:</label> <?=qualidade($aluguer['Qualidade'])?></p>
	            <p><label>Preço por Mês:</label> <?=$aluguer['Preco']?> €</p>
	        </a>
		<? } ?>
	</div>

	<div class="right">
        <p><label>Contacto:</label> </p>
	    <p><?= $ordem['Proprietario']?></p>
	    <p><?= $ordem['Contacto']?></p>
	    <p><?= $ordem['Email']?></p>
    </div>

	<p><label>Numero Mínimo de Meses:</label> <?= $ordem['Min_meses'] > 0 ? $ordem['Min_meses'] : 'Não' ?></p>
	<p><label>Capacidade Total:</label> <?= $ordem['Numero_pessoas'] ?></p>

	<p><label>Dimensões:</label> <?= qualidade($ordem['Dimensoes']) ?></p>
	<p><label>Estado da Casa:</label> <?= qualidade($ordem['Estado_casa']) ?></p>
	<p><label>Qualidade Casa de Banho:</label> <?= qualidade($ordem['Casa_de_banho']) ?></p>

	<p><label>Mobilado:</label> <?= toggle($ordem['Mobilado'])?></p>
	<p><label>Senhorio Residente:</label> <?= toggle($ordem['Senhorio'])?></p>
	<p><label>Máquina de Lavar Roupa:</label> <?= toggle($ordem['Lavagem_roupa'])?></p>

	<p><label>Inclui Outras Despesas:</label></p>
	<div class="extra">
		<p><label> Agua: </label> <?=toggle($ordem['Agua'])?></p>
		<p><label> Luz: </label> <?=toggle($ordem['Luz'])?></p>
		<p><label> Gás: </label> <?=toggle($ordem['Gas'])?></p>
		<p><label> Internet: </label> <?=toggle($ordem['Internet'])?></p>
		<p><label> Outras despesas: </label> <?=toggle($ordem['Outras_despesas'])?></p>
	</div>

	<p><label>Permite:</label></p>
	<div class="extra">
		<p><label> Visitas: </label> <?=toggle($ordem['Visitas'])?></p>
		<p><label> Animais: </label> <?=toggle($ordem['Animais'])?></p>
	</div>
</div>

<? } ?>