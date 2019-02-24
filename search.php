<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "amusementpark";

// Create connection
$conn =new mysqli($servername, $username, $password, $dbname);
echo"<h1><center>SEARCH SUCCESSFUL</center></h1>";
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$v_id=$_POST['t1'];
mysqli_select_db($conn,$dbname);
$sql="SELECT v_id,v_name,v_age,ch_in_time,p_name,l_id FROM visitors,packages WHERE v_id= '$v_id' and packages.p_id=visitors.p_id";
$records=mysqli_query($conn,$sql);


?>
<!DOCTYPE html>
<html>
<head>
    <style>
        body{
    background-image: url("pic28.jpg");
    height: 120%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
        
        
	.mybutton {
    background-color: black;
    color: white;
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
<center> <table width="300" border="3" cellpadding="3" cellspacing="5" select name="test" style="color: white"> 
<font color="white" size="5">
	<tr>
	<th>Visitor ID</th>
	<th>Visitor Name</th>
	<th>Visitor Age</th>
	<th>Check-in-Time</th>
	<th>Package Name</th>
	<th>Locker ID</th>
	</tr></center>

<?php

while ($disp=mysqli_fetch_assoc ($records)) 
{
  echo"<br><br>";
  echo"<b>VISITOR DETAILS</b><br><br>";
  echo"<tr>";
  echo "<td>".$disp['v_id']."</td>";
  echo "<td>".$disp['v_name']."</td>";
  echo "<td>".$disp['v_age']."</td>";
  echo "<td>".$disp['ch_in_time']."</td>";
  echo "<td>".$disp['p_name']."</td>";
  echo "<td>".$disp['l_id']."</td>";
  echo"<br><br>";
	
}
?>

</table>
<center>
<form action="search.html" method="POST">
<input type="SUBMIT" value="BACK" class="mybutton">
    <h2>To go back home,click the HOME button</h2>
    <div class="mybutton"><a href="homepage.html">HOME</a></div><br>
</font>
</center>

</body>
</html>