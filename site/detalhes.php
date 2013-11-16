<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
<script src="themes/1/js-image-slider.js" type="text/javascript"></script>

<?php
	function true_or_false ($aux){ 
		if($aux == 1){
			echo "Sim";
		} 
		else{
			echo "Não";
		}
	} 
?>

<div style="background-color:#CCCCCC">
	<br>

	<?php
		$pieces = explode("?", $_SERVER ['REQUEST_URI']);
		$pieces1 = explode("&", $pieces[sizeof($pieces)-1]);

		for ($i = 0; $i < sizeof($pieces1); $i++) {
			if(strpos($pieces1[$i], 'id=') !== false ){
				$res = explode("=", $pieces1[$i]);
				$ID =  $res[sizeof($res)-1];
				$i = sizeof($pieces1);
			}
		}
	?>

	<br>
	<div id="sliderFrame">
	    <div id="slider">
	        <img src="images/image-slider-1.jpg" />
	        <img src="images/image-slider-2.jpg" />
	        <img src="images/image-slider-3.jpg" />
	        <img src="images/image-slider-4.jpg" />
	        <img src="images/image-slider-5.jpg" />
	    </div>
	</div>
	<br><br><br>
	<div style="margin-left:100px">
	<? foreach ($aluguers->Find('*','Where ID = '.$ID) as $aluguer) {}?>
	<? foreach ($ordens->Find('*','Where ID = '. $aluguer['Ordem']) as $ordem) {}?>
		<div style="float:right; margin-right:200px;">
            <label id="text"> Contacto: </label><br>
            <div style="margin-left:50px">
                <?= $ordem['Proprietario'] ?><br>
                <?= $ordem['Contacto'] ?><br>
                <?= $ordem['Email'] ?><br>
            </div>
        </div>
		<label id="text"> Alojamento: </label> <?= $ordem['Tipo'] ?><br>
		<label id="text"> Tipo: </label> <?= $aluguer['Alojamento'] ?><br>
	    <label id="text"> Zona: </label> <?= $ordem['Zona'] ?><br>
	    <label id="text"> Morada: </label> <?= $ordem['Morada'] ?><br>
	    <label id="text"> Sexo: </label> <?= $ordem['Sexo'] ?><br>
		<label id="text"> Preço: </label> <?= $aluguer['Preco_mes'] ?>€<br>
		<label id="text"> Qualidade: </label> <?= $aluguer['Qualidade'] ?><br>
		<label id="text"> Numero mínimo de meses: </label> <?= $ordem['Min_meses'] ?><br>
		<label id="text"> Capacidade total: </label> <?= $ordem['Numero_pessoas'] ?><br>
		<label id="text"> Mobilado: </label> <?php true_or_false($ordem['Mobilado']) ?><br>
		<label id="text"> Certificação: </label> <?php true_or_false($ordem['Certificacao']) ?><br>
		<label id="text"> Senhorio residente: </label> <?php true_or_false($ordem['Senhorio']) ?><br>
		<label id="text"> Máquina de Lavar Roupa: </label> <?php true_or_false($ordem['Lavagem_roupa']) ?><br>
		<label id="text"> Inclui Outras despesas: </label> <br>
		<div style="margin-left:50px">
			<label id="text1"> Agua: </label> <?php true_or_false($ordem['Agua']) ?><br>
			<label id="text1"> Luz: </label> <?php true_or_false($ordem['Luz']) ?><br>
			<label id="text1"> Gás: </label> <?php true_or_false($ordem['Gas']) ?><br>
			<label id="text1"> Internet: </label> <?php true_or_false($ordem['Internet']) ?><br>
			<label id="text1"> Outras despesas: </label> <?php true_or_false($ordem['Outras_despesas']) ?><br>
		</div>
		<label id="text"> Permite: </label> <br>
		<div style="margin-left:50px">
			<label id="text1"> Visitas: </label> <?php true_or_false($ordem['Visitas']) ?><br>
			<label id="text1"> Animais: </label> <?php true_or_false($ordem['Animais']) ?><br>
		</div>
		<br>
        
	</div>
	<br><br><br>
</div>
