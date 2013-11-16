<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>AloCoimbra</title>
    	<link rel="shortcut icon" href="/images/Favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/bootstrap.slider.css">
        <link href="/css/style.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <?
            require 'lib/QuickSQL.php';
            require 'lib/ImageClip.php';
            new QuickSQL('alocoimbra', 'root', 'root');
        ?>
        
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
    
        <div id="corpo">
            <div id="logo"></div>
            <div id="menu">              
                <ul>
                    <li><a href="/">Lista</a></li>
                    <li><a href="/mapa">Mapa</a></li>
                    <li><a href="/contactos">Contactos</a></li>
                </ul>
                <div class="fb-like" data-href="https://www.facebook.com/AloCoimbra" data-width="55" data-height="65" data-colorscheme="light" data-layout="button_count" data-action="like" data-show-faces="false" data-send="false"></div>
            </div>
        
            <div id="conteudo">
                <?
                    if ($_GET['page'] == 'main' or @(include $_GET['page'] . ".php") != 1)
                        include '404.html';
                ?>
            </div> 
        </div> 
    </body>
</html>