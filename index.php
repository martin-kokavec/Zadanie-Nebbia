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
		<h4 class="text-center"><a href="editor.php">Vlož článok</a></h4>
		<br>
		<div class="position-relative">
			<form class="position-absolute top-50 start-50 translate-middle" action="vyhladajTag.php">
				<div class="text-center">
					<label for="tagSelect">Vyberte tag</label><br>
				</div>
				<select id="tagSelect" name="tagSelect">
					<?php
						error_reporting(E_ALL);			//zobrazenie chyby
						ini_set('display_errors', 1);

						include_once('db_login.php');

						$link = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbusername, $dbpassword);
						$statement = $link->query('SELECT DISTINCT text FROM tagy ORDER BY text ASC');
						while ($row = $statement->fetch())
						{
						    echo '<option value="' . $row['text'] . '">' . $row['text'] . '</option>';
						}
					?>
				</select>
				<input type="submit" value="Vyhľadaj tag">
			</form>
		</div>
		<br>
		<h1 class="text-center">Zoznam článkov</h1>
		<br>
		<?php
			$statement2 = $link->query('SELECT * FROM clanky WHERE aktivny=1');
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