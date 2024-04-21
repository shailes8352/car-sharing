<?php
include "dbcon.php";

$a=$_REQUEST['t1'];//name
$b=$_REQUEST['t2'];//email
$c=$_REQUEST['t3'];//mobile
$d=$_REQUEST['t4'];//vehicleno
$e=$_REQUEST['t5'];//ryear
$f=$_REQUEST['t6'];//dlno
$g=$_REQUEST['t7'];//address
$in=mysqli_query($con,"insert into vehicleowner(name,email,mobile,vehicleno,ryear,dlno,address) values('$a','$b','$c','$d','$e','$f','$g')");

if($in)
{
	echo "<script>alert('Thank you for sharing your car our excutive will confirm you shortly.');</script>";
	echo "<script>window.location='index.html';</script>";
}
?>