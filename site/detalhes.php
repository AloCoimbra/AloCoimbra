<?
	require 'lib/QuickSQL.php';
    require 'lib/ImageClip.php';
    new QuickSQL('alocoimbra', 'root', 'root');

	$id = @((int) $_GET['id']) - 1;
	$results = $ordens->Find('*', 'WHERE id=' . $id);

	if (count($results) == 0)
		include '404.html';
	else {
		$ordem = $results[0];

		function toggle($v) { 
			return $v == 1 ? "Sim" : "Não";
		}
?>

<link href="/css/image-slider.css" rel="stylesheet" type="text/css"/>
<script src="/js/image-slider.js" type="text/javascript"></script>

<div class="text">
	<div id="sliderFrame">
	    <div id="slider">
	        <img src="<?=LoadImage('/images/', 'Filler1.jpg', 700, 306)?>"/>
	        <img src="<?=LoadImage('/images/', 'Filler2.jpg', 700, 306)?>"/>
	        <img src="<?=LoadImage('/images/', 'Filler3.jpg', 700, 306)?>"/>
	    </div>
	</div>

    <label>Contacto:</label>
    <div>
        <?= $ordem['Proprietario']?>
        <?= $ordem['Contacto']?>
        <?= $ordem['Email']?>
    </div>

	<label>Alojamento:</label>
	<?= $ordem['Tipo']?>

    <label>Zona:</label>
    <?= $ordem['Zona']?>

    <label> Morada:</label>
    <?= $ordem['Morada']?>

    <label>Géneros Aceites:</label>
    <?= $ordem['Sexo'] ?>

	<label>Numero mínimo de meses:</label>
	<?= $ordem['Min_meses']?>

	<label>Capacidade total:</label>
	<?= $ordem['Numero_pessoas']?>

	<label>Mobilado:</label>
	<?= toggle($ordem['Mobilado'])?>

	<label>Senhorio Residente:</label>
	<?= toggle($ordem['Senhorio'])?>

	<label>Máquina de Lavar Roupa:</label>
	<?= toggle($ordem['Lavagem_roupa'])?>

	<label>Inclui Outras despesas:</label>
	<div>
		<label> Agua: </label> <?=toggle($ordem['Agua'])?>
		<label> Luz: </label> <?=toggle($ordem['Luz'])?>
		<label> Gás: </label> <?=toggle($ordem['Gas'])?>
		<label> Internet: </label> <?=toggle($ordem['Internet'])?>
		<label> Outras despesas: </label> <?=toggle($ordem['Outras_despesas'])?>
	</div>

	<label>Permite:</label>
	<div>
		<label> Visitas: </label> <?=toggle($ordem['Visitas'])?>
		<label> Animais: </label> <?=toggle($ordem['Animais'])?>
	</div>

	<? foreach ($aluguers->Find('*', 'WHERE ordem=' . $id) as $aluguer) { ?>
		<label>Um Aluguer neste Local!</label>
	<? } ?>
</div>

<? } ?>