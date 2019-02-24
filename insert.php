<html>
<head>
<style>
body{
    background-image: url("pic2.jpg");
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
<?php
$servername="localhost";
$username="root";
$password="";


//Create connection
$conn=new mysqli($servername,$username,$password,"amusementpark");


//Check connection
if($conn->connect_error)
{
die("Connection failed : ".$conn->connect_error);
}



$v_id = $_POST['t1'];
$v_name = $_POST['t2'];
$v_age = $_POST['t3'];
$ch_in_time = $_POST['t4'];
$p_name = $_POST['t5'];
$l_id = $_POST['t6'];
$package = array("Dry Thrill"=>"DA001","Water Wonder"=>"WA001","Mixed Masti"=>"DWC01","Happy Child"=>"CHM01");
$p_id=$package[$p_name];
$sql =" INSERT INTO visitors (v_id,v_name,v_age,ch_in_time,p_id,l_id) VALUES ('$v_id','$v_name','$v_age','$ch_in_time','$p_id','$l_id')";

if ($conn->query($sql) == TRUE) {
	echo "<h1><center>Record inserted successfully<br>Thank you for visiting..Please come again!!</h1></center>";
}
else
{
	echo "Error!" . $sql .  "<br>" .$conn->error;
}
$conn->close();
?>
<form action="insert.html" method="POST">
<center><input type="button" value="submit" class="mybutton" ></center>
</form>
</body>
</html>
