<html>
<head>
<style>
body{
    background-image: url("pic7.jpg");
    height: 120%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

.mybutton {
    background-color: yellow;
    color: red;
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
<font color="yellow" size="7">


<?php
$servername="localhost";
$username="root";
$password="";
$dbname="amusementpark";

//Create connection
$conn=new mysqli($servername,$username,$password,$dbname);

//Check connection
if($conn->connect_error)
{
	die("Connection falied : " .$conn->connect_error);
}

$v_id=$_POST['v_id'];

//sql to delete a record
$sql="DELETE FROM visitors WHERE v_id='$v_id'";

if($conn->query($sql)==TRUE)
{
	echo "<center>Record deleted successfully</center>";
}
else
{
	echo "Error deleting record " .$conn->error;
}

$conn->close();
?>

<center><div class="mybutton"><a href="homepage.html">HOME</a></div></center><br></font>
</body>
</html>