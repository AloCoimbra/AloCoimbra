<?
	$id = @((int) $_GET['id']);
	$results = $ordens->Find('*', 'WHERE id=' . $id);
	
	if (count($results) == 0)
		include '404.html';
	else {
		$ordem = $results[0];

		function toggle($v) { 
			return $v == 1 ? "Sim" : "Não";
		}
?>

<link href="css/image-slider.css" rel="stylesheet" type="text/css"/>
<script src="js/image-slider.js" type="text/javascript"></script>

<div>
	<div class="sliderFrame">
	    <div class="slider">
	        <img src="images/Filler1.jpg" />
	        <img src="images/Filler2.jpg" />
	        <img src="images/Filler3.jpg" />
	        <img src="images/Filler4.jpg" />
	        <img src="images/Filler5.jpg" />
	    </div>
	</div>

	<div>
		<div>
            <label>Contacto:</label>
            <div>
                <?= $ordem['Proprietario']?>
                <?= $ordem['Contacto']?>
                <?= $ordem['Email']?>
            </div>
        </div>
		<label> Alojamento: </label> <?= $ordem['Tipo']?>
	    <label> Zona: </label> <?= $ordem['Zona']?>
	    <label> Morada: </label> <?= $ordem['Morada']?>
	    <label> Sexo: </label> <?= $ordem['Sexo'] ?>
		<label> Numero mínimo de meses: </label> <?= $ordem['Min_meses']?>
		<label> Capacidade total: </label> <?= $ordem['Numero_pessoas']?>
		<label> Mobilado: </label> <?= toggle($ordem['Mobilado'])?>
		<label> Certificação: </label> <?= toggle($ordem['Certificacao'])?>
		<label> Senhorio residente: </label> <?= toggle($ordem['Senhorio'])?>
		<label> Máquina de Lavar Roupa: </label> <?= toggle($ordem['Lavagem_roupa'])?>
		<label> Inclui Outras despesas: </label>
		<div>
			<label> Agua: </label> <?=toggle($ordem['Agua'])?>
			<label> Luz: </label> <?=toggle($ordem['Luz'])?>
			<label> Gás: </label> <?=toggle($ordem['Gas'])?>
			<label> Internet: </label> <?=toggle($ordem['Internet'])?>
			<label> Outras despesas: </label> <?=toggle($ordem['Outras_despesas'])?>
		</div>
		<label> Permite: </label>
		<div>
			<label> Visitas: </label> <?=toggle($ordem['Visitas'])?>
			<label> Animais: </label> <?=toggle($ordem['Animais'])?>
		</div>

		<? foreach ($aluguers->Find('*', 'WHERE ordem=' . $id) as $aluguer) { ?>
			<label>Um Aluguer neste Local!</label>
		<? } ?>
	</div>
</div>

<? } ?>