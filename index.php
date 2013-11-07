<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>AloCoimbra</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        
        <link rel="stylesheet" type="text/css" media="all" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css">
  <link rel="stylesheet" type="text/css" media="all" href="http://fonts.googleapis.com/css?family=Acme">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
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
        <script type="text/javascript">
			$(function(){
			  $('#rangeslider').slider({
				range: true,
				min: 0,
				max: 1000,
				values: [ 50, 200 ],
				slide: function( event, ui ) {
				  $('#rangeval').html(ui.values[0]+"€ a "+ui.values[1]+"€");
				}
			  });
			});
			</script>
    
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
                    <pesquisa>
                   		<a>Tipo: </a>
                        <select name="cb1" class="opcao" size="1">
                          <option selected value="Quarto">Quarto</option>
                          <option value="Apartamento">Apartamento</option>
                          <option value="República">Republica</option>
                          <option value="Residência">Residencia</option>
                        </select>
                        <br>
                        <a>Género: </a>
                        <select name="cb1" class="opcao" size="1">
                          <option selected value="Indiferente">Indiferente</option>
                          <option value="Masculino">Masculino</option>
                          <option value="Feminino">Feminino</option>
                        </select>
                        <br>
                        <a>Preço: </a>
                        <a id="text"><span id="rangeval">50€ a 200€</span></a>
                        <br>
                        <!-- .:: código do slider ::. -->
                        <div id="rangeslider"></div>

                        <a>Localização: </a>
                        <!-- .:: depois meter para ir buscar às areas à BD ::. -->
                        <select name="cb1" class="opcao" size="1">
                          <option selected value="A1">A1</option>
                          <option value="A2">A2</option>
                          <option value="A3">A3</option>
                        </select>
                        <br>
                        
                        
                     </pesquisa>
                </div>
                        
                <div id="right">
               	  <div id="post">
                        <titulo>Lista:</titulo>
                    </div>
                    <br><br><br>
                    <div id="lista">
                    	<info><img src="images/Foto.png"; alt="Foto";></info>
                    </div>
                 <br><br><br><br><br>
                </div>
            </div> 
            <br><br><br><br><br>
        </div>
     
    </body>
</html>