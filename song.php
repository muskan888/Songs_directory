<?php
$db_hostname = 'localhost';
$db_username = 'root';
$db_password = '';
$db_database = 'songs_directory';

// Database Connection String
$con = mysqli_connect($db_hostname,$db_username,$db_password);
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }


$db_select = mysqli_select_db($con, 'songs_directory');
if (!$db_select) {
    die("Database selection failed: " . mysqli_error($con));
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
<form action="" method="post">  
Search: <input type="text" name="term" /><br />  
<input type="submit" value="Submit" />  
</form>  
<?php
if (!empty($_REQUEST['name'])) {

$term = mysqli_real_escape_string($_REQUEST['name']);     

$sql = "SELECT * FROM song WHERE Description LIKE '%".$name."%'"; 
$r_query = mysqli_query($sql); 

while ($row = mysqli_fetch_array($r_query)){  
echo 'Primary key: ' .$row['PRIMARYKEY'];  
echo '<br /> Name' .$row['Name'];  
echo '<br /> Duration '.$row[' Duration'];  
echo '<br />Year of release: '.$row['Year of release'];  
echo '<br /> Album id '.$row['Album id'];  
echo '<br /> Artist id'.$row['Artist id'];  
}  

}
?>
    </body>
</html>