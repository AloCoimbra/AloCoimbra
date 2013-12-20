<? require '../database.php'; ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="https://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>AloCoimbra</title>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <link href="/css/admin.css" rel="stylesheet" type="text/css" />

        <script>
            var selection = '';

            $(function() {
               $("#selectable" ).selectable({
                   selected: function(event, ui) {
                        selection = jQuery('.pri', $('#selectable .ui-selected')).html();
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
                <input type='button' id='add' value='Adicionar' onclick="window.location='adicionar';"> 
            </p>
            <p>
                <input type='submit' id='edit' value='Editar' onclick="window.location='editar/' + selection;" disabled> 
            </p>
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
                    <li class="ui-widget-content">
                        <table>
                            <tr>
                                <td class="pri"><?= $ordem['ID'] + 1 ?></td>
                                <td class="sec"><?= $ordem['Morada'] ?></td>
                                <td class="ter"><?= $ordem['Proprietario'] ?></td>
                                <td class="qua"><?= $ordem['Contacto'] ?></td>
                                <td class="qui"><?= $ordem['Email'] ?></td>
                                <td class="sex"><?= $ordem['Visita'] ?></td>
                                <td class="set"><?= $ordem['Pagamento'] ?></td>
                            </tr>
                        </table>
                    </li>
                <? } ?>
            </ol>
        </div>
    </body>
</html>
