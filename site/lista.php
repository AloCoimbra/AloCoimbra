<? require 'database.php'; ?>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/js/jquery.js"><\/script>')</script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<script src="/js/bootstrap.slider.js"></script>
<script src="/js/lista.js"></script>

<div class="left">
    <div class="head">Pesquisa:</div>

    <div class="pesquisa">
        Tipo:
        <!-- Meter checkboxes, para se puder pesquisar múltiplos tipos! -->
        <br>
        <div class="despesa">
            Quarto
            <input type="checkbox" name="option1" class="opcao1" value="quarto">
            <br>
            Apartamento
            <input type="checkbox" name="option1" class="opcao1" value="apartamento">
            <br>
            República
            <input type="checkbox" name="option1" class="opcao1" value="republica">
            <br>
            Residência
            <input type="checkbox" name="option1" class="opcao1" value="residencia">
            <br> 
        </div>
        
        Género: <br>
        <select name="cb1" class="opcao" size="1">
          <option selected value="Indiferente"></option>
          <option value="Masculino">Masculino</option>
          <option value="Feminino">Feminino</option>
        </select>
        <br>
        
        Localização: <br>
        <!-- .:: depois meter para ir buscar às areas à BD ::. -->
        <select name="cb1" class="opcao" size="1">
          <option selected value="Indiferente"></option>
        </select>
        <br>
        
        Número mínimo de Meses: <br>
        <select name="cb1" class="opcao" size="1">
          <option selected value="Indiferente"></option>
          <option value="1">1</option>
          <option value="3">3</option>
          <option value="6">6</option>
          <option value="12">12</option>
        </select>
        <br>
        
        Preço: 
        <br>
        <!-- .:: código do slider ::. -->
        <input type="text" class="slider">
        
        Mobilado:
        <input type="checkbox" name="option1" class="opcao1" value="mobilado">
        <br>
        
        Lavagem Roupa: 
        <input type="checkbox" name="option1" class="opcao1" value="roupa">
        <br>
        
        Despesas Incluídas: 
        <br>
        <div class="despesa">
            Água
            <input type="checkbox" name="option1" class="opcao1" value="agua">
            <br>
            Luz
            <input type="checkbox" name="option1" class="opcao1" value="luz">
            <br>
            Gás
            <input type="checkbox" name="option1" class="opcao1" value="gas">
            <br>
            Internet
            <input type="checkbox" name="option1" class="opcao1" value="internet">
            <br> 
        </div>
        
        Senhorio Residente: 
        <input type="checkbox" name="option1" class="opcao1" value="senhorio">
        <br>
        
        Visitas:
        <input type="checkbox" name="option1" class="opcao1" value="visitas">
        <br>
        
        Animais:
        <input type="checkbox" name="option1" class="opcao1" value="animais">
        <br><br>
        
        <center>
        <p><a class="btn btn-primary btn-lg" role="button">Pesquisar</a></p>
        </center>
        <br>
     </div>
</div>

<div class="right">
	<div class="head">Lista:</div>
    <? require 'entradas.php'; ?>
</div> 