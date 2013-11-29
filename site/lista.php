<? require 'database.php'; ?>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/js/jquery.js"><\/script>')</script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<script src="/js/bootstrap.slider.js"></script>
<script src="/js/lista.js"></script>

<div class="left">
    <div class="head">Pesquisa:</div>

    <div class="pesquisa">
    	<form method="post">
	        Tipo:
	        <br>
	        <div class="despesa">
	            Quarto
	            <input type="checkbox" name="quarto" class="opcao1" value="quarto">
	            <br>
	            Apartamento
	            <input type="checkbox" name="apartamento" class="opcao1" value="apartamento">
	            <br>
	            República
	            <input type="checkbox" name="republica" class="opcao1" value="republica">
	            <br>
	            Residência
	            <input type="checkbox" name="residencia" class="opcao1" value="residencia">
	            <br> 
	        </div>
	        
	        Género: <br>
	        <select name="genero" class="opcao" size="1">
	          <option selected value="Indiferente"></option>
	          <option value="Masculino">Masculino</option>
	          <option value="Feminino">Feminino</option>
	        </select>
	        <br>
	        
	        Localização: <br>
	        <select name="localizacao" class="opcao" size="1">
	          <option selected value="Indiferente"></option>
	        </select>
	        <br>
	        
	        Número mínimo de Meses: <br>
	        <select name="meses" class="opcao" size="1">
	          <option selected value="Indiferente"></option>
	          <option value="1">1</option>
	          <option value="3">3</option>
	          <option value="6">6</option>
	          <option value="12">12</option>
	        </select>
	        <br>
	        
	        Preço: 
	        <br>
	        <input type="text" class="slider">
	        <input type="hidden" name="min_value" id="min_value" value="">
 			<input type="hidden" name="max_value" id="max_value" value="">

	        Mobilado:
	        <input type="checkbox" name="mobilado" class="opcao1" value="mobilado">
	        <br>
	        
	        Lavagem Roupa: 
	        <input type="checkbox" name="roupa" class="opcao1" value="roupa">
	        <br>
	        
	        Despesas Incluídas: 
	        <br>
	        <div class="despesa">
	            Água
	            <input type="checkbox" name="agua" class="opcao1" value="agua">
	            <br>
	            Luz
	            <input type="checkbox" name="luz" class="opcao1" value="luz">
	            <br>
	            Gás
	            <input type="checkbox" name="gas" class="opcao1" value="gas">
	            <br>
	            Internet
	            <input type="checkbox" name="internet" class="opcao1" value="internet">
	            <br> 
	        </div>
	        
	        Senhorio Residente: 
	        <input type="checkbox" name="senhorio" class="opcao1" value="senhorio">
	        <br>
	        
	        Visitas:
	        <input type="checkbox" name="visitas" class="opcao1" value="visitas">
	        <br>
	        
	        Animais:
	        <input type="checkbox" name="animais" class="opcao1" value="animais">
	        <br><br>
	        
	        <center>
	        	<input type="submit" value="Pesquisar" class="btn btn-primary btn-lg">
	        </center>
	        
	        <br>
        </form>
     </div>
</div>

<div class="right">
	<div class="head">Lista:</div>
    <? require 'entradas.php'; ?>
</div> 