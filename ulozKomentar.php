<?php
	error_reporting(E_ALL);			//zobrazenie chyby
	ini_set('display_errors', 1);

	include_once('db_login.php');

	//ukladanie komentara do DB
	if (isset($_POST['komentar'])) 
	{
		$komentar = $_POST['komentar'];
	}
	else
	{
		$komentar = '';
	}

	if (isset($_POST['autorKomentara'])) 
	{
		$autor_komentara = $_POST['autorKomentara'];
	}
	else
	{
		$autor_komentara = 0;
	}

	if (isset($_POST['idClanku'])) 
	{
		$id_clanku = $_POST['idClanku'];
	}
	else
	{
		$id_clanku = 0;
	}

	$link = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbusername, $dbpassword);
	$statement = $link->prepare('INSERT INTO komentare (id_uzivatela, id_clanku, timestamp, text) VALUES (:id_autora, :id_clanku, CURRENT_TIMESTAMP(), :text)');
	$result = $statement->execute(
	[
	    'id_autora' => $autor_komentara,
	    'id_clanku' => $id_clanku,
	    'text' => $komentar,
	]);

	if($result == 1)
	{
		echo 'Váš komentár bol vložený.';
	}
	else
	{
		echo 'Váš komentár sa nepodarilo vložiť.';
	}
?>