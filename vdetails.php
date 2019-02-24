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
$sql="SELECT v_id,v_name,v_age,ch_in_time,p_name,l_id FROM visitors,packages where visitors.p_id=packages.p_id";
$records=mysqli_query($conn,$sql);


?>
<!DOCTYPE html>
<html>
<head>
    <style>
        body{
    background-image: url("pic25.jpg");
    height: 120%; 
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
	<th>Visitor ID</th>
	<th>Visitor Name</th>
	<th>Visitor Age</th>
	<th>Check-in-Time</th>
	<th>Package Name</th>
	<th>Locker ID</th>
	</tr></center>

<?php
  echo"<b>VISITORS DETAILS</b>";
while ($disp=mysqli_fetch_assoc ($records)) 
{
  echo"<tr>";
  echo "<td>".$disp['v_id']."</td>";
  echo "<td>".$disp['v_name']."</td>";
  echo "<td>".$disp['v_age']."</td>";
  echo "<td>".$disp['ch_in_time']."</td>";
  echo "<td>".$disp['p_name']."</td>";
  echo "<td>".$disp['l_id']."</td>";
	
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