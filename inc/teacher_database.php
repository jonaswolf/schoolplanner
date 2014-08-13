<?php
	include("config.php");
?>

<!DOCTYPE html>
	<html>
		<head>
			<title>schoolplanner</title>
			<meta charset="UTF-8" />
 			<link href="style.css" type="text/css" rel="stylesheet" />
		</head>
		<body>
			<?php echo "test"	//Body, use this part for reading Databases ?>
			<table>
				<?php
					$sql="SELECT * FROM teacher";
					$result=mysql_query($sql)OR DIE (mysql_error());
					while($row = mysql_fetch_array($result))
						{echo "<tr><td>Test:</td><td>".$row["short"]."</td></tr>";
						echo "<tr><td>Vorname:</td><td>".$row["first_name"]."</td></tr>";
						echo "<tr><td>Nachname:</td><td>".$row["last_name"]."</td></tr>";
				?>
			</table>
			
		</body>
	</html>