<? require 'database.php'; ?>

<div class="left">
    <div class="head">Pesquisa:</div>

    <div class="pesquisa">
    	<form method="post">
	        <div>
	            <p>Quartos <input type="checkbox" name="Quarto" value="1"></p>
	            <p>Apartamentos <input type="checkbox" name="Apartamento" value="1"></p>
	            <p>Repúblicas <input type="checkbox" name="Republica" value="1"></p>
	            <p>Residências <input type="checkbox" name="Residencia" value="1"></p>
	        </div>
	        
	        <p>Género:
		        <select name="Sexo" size="1">
		          <option selected value=""></option>
		          <option value="Feminino">Masculino</option>
		          <option value="Masculino">Feminino</option>
		        </select>
	        </p>
	        
	        <p>Localização:
		        <select name="Zona" size="1">
		          <option selected value=""></option>
		        </select>
	        </p>
	        
	        <p>Número mínimo de Meses:
		        <select name="Meses" size="1">
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
	        	<input type="hidden" name="MinPreco" id="MinPreco" value="">
 				<input type="hidden" name="MaxPreco" id="MaxPreco" value="">
 			</p>

	        <p>Mobilado: <input type="checkbox" name="Mobilado" value="1"></p>
	        <p>Lavagem Roupa: <input type="checkbox" name="Lavagem_roupa" value="1"></p>
	        
	       	Despesas Incluídas:
	        <div>
	            <p>Água <input type="checkbox" name="Agua" value="1"></p>
	            <p>Luz <input type="checkbox" name="Luz" value="1"></p>
	            <p>Gás <input type="checkbox" name="Gas" value="1"></p>
	            <p>Internet <input type="checkbox" name="Internet" value="1"></p>
	        </div>
	        
	        <p>Sem Senhorio Residente: <input type="checkbox" name="Senhorio" value="1"></p>
	        <p>Visitas: <input type="checkbox" name="Visitas" value="1"></p>
	        <p>Animais: <input type="checkbox" name="Animais" value="1"></p>
	        
	        <center>
	        	<input type="submit" value="Pesquisar" class="btn btn-primary btn-lg">
	        </center>
        </form>
     </div>
</div>

<div class="right list">
	<div class="head">Lista:</div>
	<? include 'entradas.php' ?>
</div> 

<script type="text/javascript">
	var post = <?= json_encode($_POST); ?>;
</script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/js/jquery.js"><\/script>')</script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<script src="/js/bootstrap.slider.js"></script>
<script src="/js/lista.js"></script>