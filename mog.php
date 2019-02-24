<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "amusementpark";

// Create connection
$conn =new mysqli($servername, $username, $password, $dbname);
echo"<h1><center>DETAILS!!</center></h1>";
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
mysqli_select_db($conn,$dbname);
$sql="SELECT w_id,w_name,w_age,w_sal,g_name from workers,games where games.g_id=workers.g_id";
$records=mysqli_query($conn,$sql);


?>
<!DOCTYPE html>
<html>
<head>
    <style>
        body{
    background-image: url("pic24.jpg");
    height: 200%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
        
        
	.mybutton {
    background-color: white;
    color: black;
    padding: 20px 34px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 12px;
}
</style>
</head>
<body>
<center> <table width="500" border="3" cellpadding="3" cellspacing="5" select name="visitors" style="color: white"> 
<font color="white" size="6">
	<tr>
	<th>Worker ID</th>
	<th>Worker Name</th>
	<th>Worker Age</th>
	<th>Wrker Salary</th>
	<th>Game Name</th>
	</tr></center>

<?php
  echo"<b>WORKERS DETAILS</b>";
while ($disp=mysqli_fetch_assoc ($records)) 
{
  echo"<tr>";
  echo "<td>".$disp['w_id']."</td>";
  echo "<td>".$disp['w_name']."</td>";
  echo "<td>".$disp['w_age']."</td>";
  echo "<td>".$disp['w_sal']."</td>";
  echo "<td>".$disp['g_name']."</td>";
	
}
?>

</table>
<center>
    To go back home,click the HOME button<br>
    <div class="mybutton"><a href="homepage.html">HOME</a></div><br>
</font>
</center>

</body>
</html>