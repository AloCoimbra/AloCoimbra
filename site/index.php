<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>AloCoimbra</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap.slider.css">
		<script src="js/jquery.js"></script>
	    <script type="text/javascript">

	    	$(document).ready(function() {

            	$('.slider').slider({
            		min: 0,
            		max: 1000,
            		step: 5,
            		value: [250,750]
            	});

            	$('.tooool').tooltip();

	    	});

	    </script>
    </head>

    <body>
        <div id="fb-root"></div>
		<script>
			(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "http://connect.facebook.net/en_US/all.js#xfbml=1&appId=684716608206636";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));
        </script>
        
        <script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrap.slider.js"></script>
    
        <div id="corpo">
            <div id = "logo">
                <img src="images/Topo.png"; alt="AloCoimbra";>
            </div>
            <div id = "menu">              
                <ul>
                    <li><a href="#">Lista</a></li>
                    <li><a href="#">Mapa</a></li>
                    <li><a href="#">Contactos</a></li>
                </ul>
                <div class="fb-like" data-href="https://www.facebook.com/AloCoimbra" data-width="55" data-height="65" data-colorscheme="light" data-layout="button_count" data-action="like" data-show-faces="false" data-send="false"></div>
            </div>
        
            
            <div id = "conteudo"> 
                <div id="left">
                    <div id="post">
                        <titulo>Pesquisa:</titulo>
                    </div>
                    <div class="pesquisa">
                   		Tipo: <br>
                        <select name="cb1" class="opcao" size="1">
                          <option selected value="Quarto">Quarto</option>
                          <option value="Apartamento">Apartamento</option>
                          <option value="República">Republica</option>
                          <option value="Residência">Residencia</option>
                        </select>
                        <br>
                        
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
                          <option value="A1">A1</option>
                          <option value="A2">A2</option>
                          <option value="A3">A3</option>
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
                        
                        Despesas: 
                        <br>
						<div id="despesa">
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
                        
                        <p><a class="btn btn-primary btn-lg" role="button">Pesquisar</a></p>
                        
                        <br>
                     </div>
                </div>
                        
                <div id="right">
                	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>
            </div> 
            <br><br><br><br><br>
        </div>
     
    </body>
</html>