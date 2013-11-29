<? require 'database.php'; ?>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/js/jquery.js"><\/script>')</script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<script src="/js/bootstrap.slider.js"></script>
<script src="/js/lista.js"></script>

<div class="left">
    <div class="head">Pesquisa:</div>

    <div class="pesquisa">
    	<form method="get">
	        <div>
	            <p>Quartos <input type="checkbox" name="quarto" value="1" checked></p>
	            <p>Apartamentos <input type="checkbox" name="apartamento" value="1" checked></p>
	            <p>Repúblicas <input type="checkbox" name="republica" value="1" checked></p>
	            <p>Residências <input type="checkbox" name="residencia" value="1" checked></p>
	        </div>
	        
	        <p>Género:
		        <select name="genero" size="1">
		          <option selected value="Any"></option>
		          <option value="Masculino">Masculino</option>
		          <option value="Feminino">Feminino</option>
		        </select>
	        </p>
	        
	        <p>Localização:
		        <select name="localizacao" size="1">
		          <option selected value=""></option>
		        </select>
	        </p>
	        
	        <p>Número mínimo de Meses:
		        <select name="meses" size="1">
		          <option selected value="0"></option>
		          <option value="1">1</option>
		          <option value="3">3</option>
		          <option value="6">6</option>
		          <option value="12">12</option>
		        </select>
	        </p>
	        
	        <br>
	        <p>Preço:
	        	<input type="text" class="slider">
	        	<input type="hidden" name="minValue" id="minValue" value="">
 				<input type="hidden" name="maxValue" id="maxValue" value="">
 			</p>

	        <p>Mobilado: <input type="checkbox" name="mobilado" value="1"></p>
	        <p>Lavagem Roupa: <input type="checkbox" name="roupa" value="1"></p>
	        
	       	Despesas Incluídas:
	        <div>
	            <p>Água <input type="checkbox" name="agua" value="1"></p>
	            <p>Luz <input type="checkbox" name="luz" value="1"></p>
	            <p>Gás <input type="checkbox" name="gas" value="1"></p>
	            <p>Internet <input type="checkbox" name="internet" value="1"></p>
	        </div>
	        
	        <p>Sem Senhorio Residente: <input type="checkbox" name="senhorio" value="1"></p>
	        <p>Visitas: <input type="checkbox" name="visitas" value="1"></p>
	        <p>Animais: <input type="checkbox" name="animais" value="1"></p>
	        
	        <center>
	        	<input type="submit" value="Pesquisar" class="btn btn-primary btn-lg">
	        </center>
        </form>
     </div>
</div>

<div class="right list">
	<div class="head">Lista:</div>
   	 <? require 'entradas.php'; ?>
</div> 