<!DOCTYPE html>
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<link rel="stylesheet" href="style.css?v=2">
		<meta charset="UTF-8">

		<script>
			function odosliKomentar()
			{
				var vals = $("#pridanieKomentara").serialize();
				alert("Komentár sa odosiela.");

			    $.ajax({
			        url: "ulozKomentar.php",  
			        method: "POST",
			        data: vals,
			        success: function(data) 
			        {
			            alert(data);
			        }
			    });

			    return false; // prevent from submit
			}
		</script>
	</head>
	<body>
		<h4 class="text-center"><a href=".">Naspäť na hlavnú stránku</a></h4>
		<br>
		<?php
			error_reporting(E_ALL);			//zobrazenie chyby
			ini_set('display_errors', 1);

			include_once('db_login.php');

			if (isset($_GET['id'])) 
			{
				$id = $_GET['id'];
			}
			else
			{
				$id = 0;
			}

			$id_autora = 0;
			$meno_autora = 'Anonym';

			$link = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbusername, $dbpassword);
			$statement = $link->prepare('SELECT * FROM clanky WHERE aktivny=1 AND id = :id');
			$statement->execute(['id' => $id]);
			while ($row = $statement->fetch())
			{
			    echo '<div class="border border-secondary mx-2 px-2"><h2 class="text-center">' . $row['nadpis'] . '</h2>';
			    if($row['obrazok'] == NULL)
			    {
			    	echo '<br>';
			    }
			    else
			    {
			    	echo '<br><img src="obrazky/' . $row['obrazok'] . '" class="titulnyObrazok"><br>';
			    }
			    $datum =  date_format(new DateTime($row['timestamp']), 'd.m.Y H:i:s');
			    echo '<p>' . nl2br($row['obsah']) . '</p><br><b>Dátum a čas vydania: </b>' . $datum;
			    $id_autora = $row['id_autora'];
			}


			$statement2 = $link->prepare('SELECT text FROM tagy WHERE id_clanku = :id');
			$statement2->execute(['id' => $id]);
			$prvyTag = true;
			echo '<br><b>Tagy: </b>';

			while ($row = $statement2->fetch())
			{
				if($prvyTag)
				{
					$prvyTag = false;
				}
				else
				{
					echo ", ";
				}
			    echo '<a href=vyhladajTag.php?tagSelect=' . str_replace(" ","+", $row['text']) . '>' . $row['text'] . '</a>';
			}

			$statement3 = $link->prepare('SELECT meno FROM uzivatelia WHERE id = :id');
			$statement3->execute(['id' => $id_autora]);
			echo '<br><b>Autor: </b>';

			while ($row = $statement3->fetch())
			{
			    $meno_autora = $row['meno'];
			}
			echo '<a href="autor.php?id=' . $id_autora. '">' . $meno_autora . '</a>';

			echo '<br><br>';
		?>

			<h4>Komentáre</h4>
			<br>
			<?php
				$statement4 = $link->prepare('SELECT * FROM komentare LEFT JOIN uzivatelia ON komentare.id_uzivatela=uzivatelia.id WHERE komentare.id_clanku= :id');

				$statement4->execute(['id' => $id]);

				while ($row = $statement4->fetch())
				{
					$datum =  date_format(new DateTime($row['timestamp']), 'd.m.Y H:i:s');
				    echo '<b>' . $row['meno'] . '</b> (' . $datum . ")";
				    echo '<br>';
				    echo $row['text'];
				    echo '<br><br>';
				}
			?>
			<br>
			<h5>Pridajte nový komentár</h5>
			<br>
			<form id="pridanieKomentara" action="" method="post">
			  	<label for="autorKomentara">Uživateľ</label><br>
			  	<select id="autorKomentara" name="autorKomentara">
			  		<option value="0">Anonym</option>'
					<?php
						$statement5 = $link->query('SELECT DISTINCT id, meno FROM uzivatelia ORDER BY meno ASC');
						while ($row = $statement5->fetch())
						{
						    echo '<option value="' . $row['id'] . '">' . $row['meno'] . '</option>';
						}
					?>
				</select>
				<br><br>
				<label for="komentar">Komentár</label><br>
			  	<textarea id="komentar" name="komentar" rows="5"></textarea><br><br>
			  	<input type="hidden" id="idClanku" name="idClanku" value="<?php echo $id; ?>">
			  	<button id="insertCommentButton" onclick="odosliKomentar();">Odoslať komentár</button>
			</form>
			<br>
		</div>
	</body>
</html>