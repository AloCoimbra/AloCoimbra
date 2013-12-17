<?
    require '../database.php';

    $id = @((int) $_GET['id']) - 1;
    $ordem = $ordens->Pull('*', 'WHERE id=' . $id);
    $ordem = $ordem ? $ordem : array();

    $aluguers = $aluguers->Find('*', 'WHERE ordem=' . $id);
    $images = $imagens->Find('id', 'WHERE ordem=' . $id);

    for ($i = 0; $i < count($aluguers); $i++)
        foreach ($aluguers[$i] as $key => $value)
            $ordem[$key . $i] = $value;
?>

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>AloCoimbra</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
        <link href="/css/admin.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <form action="/admin/submeter" method="post">
            <input type="hidden" name="ID" value="<?=$id?>"/>

            <div class="menu">
                <div class="right">
                    <p><input type="text" name="Morada"></p>
                    <p><input type="text" name="Zona"></p>
                    <p>
                       <select name="Cetificacao" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p>
                        <input type="text" class="data" name="Inscricao" readonly>
                    </p>
                    <p>
                        <input type="text" class="data" name="Visita" readonly>
                    </p>
                    <p>
                        <input type="text" class="data" name="Pagamento" readonly>
                    </p>
                    <p><input type="text" name="Avaliador"></p>
                </div>
                <div class="left">
                    <p>Morada: </p>
                    <p>Zona: </p>
                    <p>Certificação: </p>
                    <p>1ª Inscrição - Ano: </p>
                    <p>Data da última visita: </p>
                    <p>Data do último pagamento: </p>
                    <p>Avaliador: </p>
                </div>
            </div>

            <div class="menu">
                <div class="right">
                    <p><input type="text" name="Proprietario"></p>
                    <p><input type="text" name="Contacto"></p>
                    <p><input type="text" name="Email"></p>
                </div>
                <div class="left">
                    <p>Proprietario: </p>
                    <p>Contacto: </p>
                    <p>E-Mail: </p>
                </div>
            </div>

            <div class="menu">
                <div class="right">
                    <p>
                        <select name="Tipo" size="1">
                            <option selected value="Quarto">Quarto</option>
                            <option value="Apartamento">Apartamento</option>
                            <option value="Residencia">Residência</option>
                            <option value="Republica">Républica</option>
                        </select>
                    </p>
                    <p>
                        <select name="Sexo" size="1">
                            <option selected value="Ambos">Ambos</option>
                            <option value="Masculino">Masculino</option>
                            <option value="Feminino">Feminino</option>
                        </select>
                    </p>
                    <p><input type="number" name="Min_meses" value="0" min="0" step="1" onkeypress="return isNumberKey(event)"></p>
                    <p>
                        <select name="Estado_casa" size="1">
                            <option selected value="0">Razoável</option>
                            <option value="1">Bom</option>
                            <option value="2">Muito Bom</option>
                            <option value="3">Excelente</option>
                        </select>
                    </p>
                    <p>
                        <select name="Dimensoes" size="1">
                            <option selected value="0">Razoável</option>
                            <option value="1">Bom</option>
                            <option value="2">Muito Bom</option>
                            <option value="3">Excelente</option>
                        </select>
                    </p>
                    <p>
                        <select name="Cozinha" size="1">
                            <option selected value="0">Razoável</option>
                            <option value="1">Bom</option>
                            <option value="2">Muito Bom</option>
                            <option value="3">Excelente</option>
                        </select>
                    </p>
                    <p>
                        <select name="Casa_de_banho" size="1">
                            <option selected value="0">Razoável</option>
                            <option value="1">Bom</option>
                            <option value="2">Muito Bom</option>
                            <option value="3">Excelente</option>
                        </select>
                    </p>
                    <p>
                        <select name="Senhorio" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p>
                        <select name="Lavagem_roupa" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p>
                        <select name="Mobilado" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p></p>
                    <p>
                        <select name="Agua" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p>
                        <select name="Luz" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p>
                        <select name="Gas" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p><input type="text" name="Outras_despesas"></p>
                    <p></p>
                    <p>
                        <select name="Animais" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p>
                        <select name="Visitas" size="1">
                            <option selected value="0">Não</option>
                            <option value="1">Sim</option>
                        </select> 
                    </p>
                    <p>
                        <input name="imagem" type="file" multiple accept='image/*'>
                    </p>  
                    <p></p>
                    <p><input type="checkbox" name="imagem1" value="1"></p>
                    <p><input type="checkbox" name="imagem2" value="1"></p>
                </div>
                <div class="left">
                    <p>Alojamento: </p>
                    <p>Género: </p>
                    <p>Nº mínimo de meses: </p>
                    <p>Estado da Casa: </p>
                    <p>Dimensões: </p>
                    <p>Cozinha: </p>
                    <p>Casa de Banho: </p>
                    <p>Senhorio Residente: </p>
                    <p>Lavagem de Roupa: </p>
                    <p>Mobilado: </p>
                    <p>Despesas: </p>
                    <div class="subtema">
                        <p>Água: </p>
                        <p>Luz: </p>
                        <p>Gás: </p>
                        <p>Outra(s): </p>
                    </div>
                    <p>Permite: </p>
                    <div class="subtema">
                        <p>Animais: </p>
                        <p>Visitas: </p>
                    </div>
                    <p>Imagem: </p>

                    <!-- mostrar uma vesrão pequena das imagens, não texto! -->
                    <p>Apagar Imagens: </p>
                    <div class="subtema">
                        <p>Imagem1 </p>
                        <p>Imagem2 </p>
                    </div>
                </div>
            </div>

            <? for ($i = 0; $i < max(1, count($aluguers)); $i++) { ?>
                <div class="menu" id="Aluguer<?=$i?>">
                    <div class="right">
                        <p>
                            <select name="Alojamento<?=$i?>" size="1">
                                <option selected value="Individual">Individual</option>
                                <option value="Duplo">Duplo</option>
                            </select> 
                        </p>
                        <p>
                            <select name="Qualidade<?=$i?>" size="1">
                                <option selected value="0">Razoável</option>
                                <option value="1">Bom</option>
                                <option value="2">Muito Bom</option>
                                <option value="3">Excelente</option>
                            </select>
                        </p>
                        <p><input type="number" name="Preco<?=$i?>" value="150" min="0" step="1" onkeypress="return isNumberKey(event)"></p>
                    </div>
                    <div class="left">
                        <p>Tipo: </p>
                        <p>Qualidade: </p>
                        <p>Preço: </p>
                    </div>
                    <center>
                        <input type='button' id='Toggle<?=$i?>' value='Adicionar outro'>
                    </center>
                </div>
            <? } ?>

            <div class="menu" id="submit">
                <center>
                    <input type='submit' id='submete' value='Submeter'> 
                </center>
            </div>

        </form>

        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <script type="text/javascript">
            var formData = <?= json_encode($ordem); ?>;
        </script>
        <script src="/js/forms.js"></script>
        <script src="/js/adminEdit.js"></script>
    </body>
</html>
