<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<a href=".">Naspäť na zoznam článkov</a>
		<br><br><br>
		<form action="vloz.php" method="post" enctype="multipart/form-data">
		  	<label for="nadpis">Nadpis</label><br>
		  	<input type="text" id="nadpis" name="nadpis" required><br><br>
		  	<label for="obsah">Text článku</label><br>
		  	<textarea id="obsah" name="obsah" rows="20" required></textarea><br><br>
		  	<label for="autor">Autor</label><br>
		  	<select id="autor" name="autor">
		  		<option value="0">Anonym</option>'
				<?php
					include_once('db_login.php');

					$link = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbusername, $dbpassword);
					$statement = $link->query('SELECT DISTINCT id, meno FROM uzivatelia WHERE typ=2 ORDER BY meno ASC');
					while ($row = $statement->fetch())
					{
					    echo '<option value="' . $row['id'] . '">' . $row['meno'] . '</option>';
					}
				?>
			</select>
			<br><br>
		  	<label for="tagy">Tagy (oddeľujte ich čiarkou)</label><br>
		  	<textarea id="tagy" name="tagy" rows="2"></textarea><br><br>
		  	<label for="obrazok">Vložte titulnú fotku (Max 1 MB)</label><br>
		  	<input type="file" id="obrazok" name="obrazok" accept=".jpg, .jpeg, .png, .gif"><br><br>
		  	<input type="submit" value="Vložiť článok" name="insertButton" id="insertButton">
		</form> 
	</body>
</html>