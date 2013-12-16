<?
	session_start();

	if (@($_POST['password']) == '123')
		$_SESSION['logged'] = true;

	include @($_SESSION['logged']) ? $_GET['page'] . '.php': 'login.html';
?>