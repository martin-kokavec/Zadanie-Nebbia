<!DOCTYPE html>
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="style.css">
		<meta charset="UTF-8">
	</head>
	<body>
		<a class="mx-2 px-2" href=".">Späť</a>
		<br>
		<?php
			error_reporting(E_ALL);			//zobrazenie chyby
			ini_set('display_errors', 1);

			include_once('db_login.php');

			if (isset($_GET['tagSelect'])) 
			{
				$tag = $_GET['tagSelect'];
			}
			else
			{
				$tag = '';
			}

			$link = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbusername, $dbpassword);
			$statement = $link->prepare('SELECT id_clanku FROM tagy WHERE text = :tag');
			$statement->execute(['tag' => $tag]);
			$resultArray = array();
			while ($row = $statement->fetch())
			{
			    array_push($resultArray, $row['id_clanku']);
			}

			$otazniky = str_repeat("?,", count($resultArray)-1) . "?";
			$statement2 = $link->prepare('SELECT * FROM clanky WHERE id IN (' . $otazniky . ') AND aktivny=1');
			$statement2->execute($resultArray);
			while ($row = $statement2->fetch())
			{
			    echo '<div class="border border-secondary mx-2 px-2"><h3 class="text-center"><a href="clanok.php?id=' . $row['id'] . '">' . $row['nadpis'] . '</a></h3>';
			    if($row['obrazok'] == NULL)
			    {
			    	echo '<br>';
			    }
			    else
			    {
			    	echo '<br><img src="obrazky/' . $row['obrazok'] . '" class="titulnyObrazok"><br>';
			    }
			   	echo '<p>' . $row['obsah'] . '</p></div><br>';
			}
		?>
	</body>
</html>