<?
    require 'lib/ImageClip.php';
    require 'database.php';

	$id = @((int) $_GET['id']) - 1;
	$results = $ordens->Find('*', 'WHERE id=' . $id);

	if (count($results) == 0)
		include '404.html';
	else {
		$ordem = $results[0];
?>

<link href="/css/image-slider.css" rel="stylesheet" type="text/css"/>
<script src="/js/image-slider.js" type="text/javascript"></script>

<div class="text">
	<div id="sliderFrame">
	    <div id="slider">
	        <img src="/images/Filler1.jpg" />
	        <img src="/images/Filler2.jpg" />
	        <img src="/images/Filler3.jpg" />
	    </div>
	</div>

	<div class="detalhe_contac">
        <p><label>Géneros Aceites:</label>
        <?= $ordem['Sexo'] ?></p>

        <p><label>Alojamento:</label>
        <?= $ordem['Tipo']?></p>

        <p><label>Zona:</label>
        <?= $ordem['Zona']?></p>

        <p><label> Morada:</label>
        <?= $ordem['Morada']?></p>
    </div>

	<? foreach ($aluguers->Find('*', 'WHERE ordem=' . $id) as $aluguer) { ?>
    	<div class="detalhe_aluguer">
			<p><label>Tipo de Alojamento:</label> <?=$aluguer['Alojamento']?></p>
            <p><label>Preço por mês:</label> <?=$aluguer['Preco_mes']?> €</p>
            <p><label>Qualidade do quarto:</label> <?=$aluguer['Qualidade']?></p>
        </div>
	<? } ?>

	<p><label>Numero mínimo de meses:</label>
	<?= $ordem['Min_meses']?></p>

	<p><label>Capacidade total:</label>
	<?= $ordem['Numero_pessoas']?></p>

	<p><label>Mobilado:</label>
	<?= toggle($ordem['Mobilado'])?></p>

	<p><label>Senhorio Residente:</label>
	<?= toggle($ordem['Senhorio'])?></p>

	<div class="detalhe_contac">
        <p><label>Contacto:</label></p>
        <div>
            <p><?= $ordem['Proprietario']?></p>
            <p><?= $ordem['Contacto']?></p>
            <p><?= $ordem['Email']?></p>
        </div>
    </div>

	<p><label>Máquina de Lavar Roupa:</label>
	<?= toggle($ordem['Lavagem_roupa'])?></p>

	<p><label>Inclui Outras despesas:</label></p>
	<div class="detalhe_extra">
		<p><label> Agua: </label> <?=toggle($ordem['Agua'])?></p>
		<p><label> Luz: </label> <?=toggle($ordem['Luz'])?></p>
		<p><label> Gás: </label> <?=toggle($ordem['Gas'])?></p>
		<p><label> Internet: </label> <?=toggle($ordem['Internet'])?></p>
		<p><label> Outras despesas: </label> <?=toggle($ordem['Outras_despesas'])?></p>
	</div>

	<p><label>Permite:</label></p>
	<div class="detalhe_extra">
		<p><label> Visitas: </label> <?=toggle($ordem['Visitas'])?></p>
		<p><label> Animais: </label> <?=toggle($ordem['Animais'])?></p>
	</div>
</div>

<? } ?>