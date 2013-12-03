<?
	require 'lib/QuickSQL.php';
    new QuickSQL('alocoimbra', 'root', 'root');

    function qualidade($v) { 
    	if ($v == 3)
    		return "Excelente";
    	elseif ($v == 2)
    		return "Muito Bom";
    	elseif ($v == 1)
    		return "Bom";
    	else
    		return "Razoável";
	}
?>