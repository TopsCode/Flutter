<?php

include 'connect.php';

$unm=$_REQUEST["email"];
$pwd=$_REQUEST["pass"];


$sel="select * from registration where  email='$unm' and password = '$pwd'";

$ex=mysqli_query($con,$sel);


$no=mysqli_num_rows($ex);
//echo $no;


if($no>0)
{
$fet=mysqli_fetch_object($ex);
echo json_encode(['code'=>200]);
}
else
{
echo "0";
}


?>