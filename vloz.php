<?php
	error_reporting(E_ALL);			//zobrazenie chyby
	ini_set('display_errors', 1);

	include_once('db_login.php');

	echo '<a href=".">Naspäť na zoznam článkov</a><br>';

	//ukladanie obrazku
	$target_dir = "obrazky/";
	$target_file = $target_dir . basename($_FILES["obrazok"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

	// KOntrola, ci sa skutocne jedna o obrazok
	if(isset($_POST["submit"])) 
	{
		$check = getimagesize($_FILES["obrazok"]["tmp_name"]);
		if($check !== false) 
		{
			echo "Súbor je obrázok - " . $check["mime"] . ".";
			$uploadOk = 1;
		} 
		else 
		{
			echo "Súbor nie je obrázok.";
			$uploadOk = 0;
		}
	}

	// Kontrola, ci subor uz existuje, a ak ano, tak mu zmenim nazov
	if (file_exists($target_file)) 
	{
		$d1 = new Datetime();
		$d1 = $d1->format('YmdHis');
		$filenameParts = explode (".", $target_file); 
		$target_file = $filenameParts[0] . $d1 . "." . $filenameParts[1];
		$uploadOk = 1;
	}

	// Kontrola velkosti fotky
	if ($_FILES["obrazok"]["size"] > 1000000) 
	{
	  	echo "Veľkosť fotky je príliš veľká.";
	  	$uploadOk = 0;
	}

	// Kontrola typu suboru
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) 
	{
		echo "Iba obrázky typu JPG, JPEG, PNG & GIF môžu byť použité.";
		$uploadOk = 0;
	}

	// Kontrola hodnoty $uploadOk
	echo "<br>";
	if ($uploadOk == 0) 
	{
	  	echo "Titulná fotka nebola uložená.";
	} 
	else 
	{
  		if (move_uploaded_file($_FILES["obrazok"]["tmp_name"], $target_file)) 
		{
		    echo "Titulná fotka ". htmlspecialchars( basename( $_FILES["obrazok"]["name"])). " bola uložená.";
		} 
		else 
		{
		    echo "Titulná fotka nebola uložená.";
		}
	}
	echo "<br>";

	//ukladanie clanku do DB
	if (isset($_POST['nadpis'])) 
	{
		$nadpis = $_POST['nadpis'];
	}
	else
	{
		$nadpis = '';
	}
	
	if (isset($_POST['obsah'])) 
	{
		$obsah = $_POST['obsah'];
	}
	else
	{
		$obsah = '';
	}

	if (isset($_POST['tagy'])) 
	{
		$tagy = $_POST['tagy'];
	}
	else
	{
		$tagy = '';
	}

	if (isset($_POST['id_autora'])) 
	{
		$id_autora = $_POST['id_autora'];
	}
	else
	{
		$id_autora = 0;
	}

	$link = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbusername, $dbpassword);
	$statement = $link->prepare('INSERT INTO clanky (id_autora, nadpis, obsah, timestamp, obrazok) VALUES (:id_autora, :nadpis, :obsah, CURRENT_TIMESTAMP(), :obrazok)');
	$filenameParts = explode ("/", $target_file);
	$obrazokName = htmlspecialchars($filenameParts[1]);
	$result = $statement->execute(
	[
	    'id_autora' => $id_autora,
	    'nadpis' => $nadpis,
	    'obsah' => $obsah,
	    'obrazok' => $obrazokName,
	]);

	if($result == 1)
	{
		echo 'Váš článok bol vložený.';
	}
	else
	{
		echo 'Váš článok sa nepodarilo vložiť.';
	}

	$idClanku = 0;
	$statement2 = $link->query('SELECT MAX(id) maxid  FROM clanky');
	while ($row = $statement2->fetch())
	{
	    $idClanku = $row['maxid'];
	}

	$tagArray = explode(",", $tagy);
	foreach ($tagArray as $tag) 
	{
  		$statement3 = $link->prepare('INSERT INTO tagy (id_clanku, text) VALUES (:id_clanku, :tag)');
		$statement3->execute(
		[
		    'id_clanku' => $idClanku,
		    'tag' => ltrim($tag),
		]);
	}
?>