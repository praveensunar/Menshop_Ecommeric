<?php
include("connection.php");
error_reporting(0);

$id=$_GET['rn'];
$query="DELETE FROM items WHERE id= '$id'";

$data=mysqli_query($con,$query);

if($data)
{
    header('location: product.php');
}
else
{
    echo"<font color='red'>fail to delete product";
}
?>