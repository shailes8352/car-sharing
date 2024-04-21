<?php
include "dbcon.php";

$a=$_REQUEST['t1'];//name
$b=$_REQUEST['t2'];//locfrom
$c=$_REQUEST['t3'];//mobile
$d=$_REQUEST['t4'];//locto
$e=$_REQUEST['t5'];//email
$f=$_REQUEST['t6'];//datefrom
$g=$_REQUEST['t7'];//dlno
$h=$_REQUEST['t8'];//dateto
$i=$_REQUEST['t9'];//address
$id=rand(1111,9999);
$in=mysqli_query($con,"insert into booking(bid,name,mobile,email,dlno,address,locfrom,locto,datefrom,dateto) values('$id','$a','$c','$e','$g','$i','$b','$d','$f','$h')");

if($in)
{
	echo "<script>alert('Booking Successfully and your booking ID is ".$id.". Thank You');</script>";
	echo "<script>window.location='index.html';</script>";
}
?>