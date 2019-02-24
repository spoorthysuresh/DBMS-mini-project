<html>
    
<head>
<style>
body{
    background-image: url("pic8.jpg");
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

$v_id=$_POST['t7'];
$v_phno=$_POST['t8'];

$sql="INSERT INTO phone(v_id,v_phno)
VALUES('$v_id','$v_phno')";

if($conn->query($sql)==TRUE)
{
	echo "<h1><center>Record inserted successfully<br>Thank you for visiting..Please come again!!</h1></center>";
}
else
{
	echo "Error!" . $sql .  "<br>" .$conn->error;
}
$conn->close();
?>
<form action="insert.html" method="POST">
</form>
    <CENTER>
    <h2>To insert another number,please click on the following button!!</h2>
    <div class="mybutton"><a href="insertagain.html">INSERT ANOTHER NUMBER</a></div><br>
    <h2>To go back home,click the HOME button</h2>
    <div class="mybutton"><a href="homepage.html">HOME</a></div><br></CENTER>
</body>
</html>
