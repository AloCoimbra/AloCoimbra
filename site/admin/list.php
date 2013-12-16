<? require 'database.php'; ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>AloCoimbra</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <link href="/css/admin.css" rel="stylesheet" type="text/css" />

        <script>
            $(function() {
               $("#selectable" ).selectable({
                   selected: function(event, ui) {
                        document.getElementById("orderNumber").value = $('#selectable .ui-selected').attr('id');
                        $('#edit').prop('disabled', false);
                   }
                });

                $("#selectable").selectable({
                    selecting: function(event, ui){
                        if( $(".ui-selected, .ui-selecting").length > 1){
                              $(ui.selecting).removeClass("ui-selecting");
                        }
                    }
                    
                });
            });
        </script>
    </head>
    <body>
        <div class="menu-lateral">
            <p>
                <input type='button' id='add' value='Adicionar' onclick="window.location='additem.html';"> 
            </p>
            <!-- só meti get para testar -->
            <form action="additem.html" method="get">
                <p>
                    <input type="hidden" name="id" id="orderNumber" value="0" />
                    <input type='submit' id='edit' value='Editar' disabled> 
                </p>
            </form>
        </div>

        <div class="lista">
            <center>
                <p>Lista de Habitações</p> 
            </center>

            <div class="ui-widget-content">
                <table border="1">
                    <tr>
                        <td class="pri"><b>Nº ordem</b></td>
                        <td class="sec"><b>Morada</b></td>
                        <td class="ter"><b>Proprietário</b></td>
                        <td class="qua"><b>Contacto</b></td>
                        <td class="qui"><b>E-mail</b></td>
                        <td class="sex"><b>Visita</b></td>
                        <td class="set"><b>Pagamento</b></td>
                    </tr>
                </table> 
            </div>

            <ol id="selectable">
                <? foreach ($ordens->Find('*', '') as $ordem) { ?>
                    <li class="ui-widget-content" id="<?= $ordem['ID'] ?>">
                        <table>
                            <tr>
                                <td class="pri"> <?= $ordem['ID'] ?> </td>
                                <td class="sec"> <?= $ordem['Morada'] ?> </td>
                                <td class="ter"> <?= $ordem['Proprietario'] ?> </td>
                                <td class="qua"> <?= $ordem['Contacto'] ?> </td>
                                <td class="qui"> <?= $ordem['Email'] ?> </td>
                                <td class="sex"> <?= $ordem['Visita'] ?> </td>
                                <td class="set"> <?= $ordem['Pagamento'] ?> </td>
                            </tr>
                        </table>
                    </li>
                <? } ?>
            </ol>
        </div>
    </body>
</html>
