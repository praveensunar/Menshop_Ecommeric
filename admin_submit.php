<?php
  $con=mysqli_connect("localhost","root","","store") or die(mysqli_error($con));
if(!empty($_POST['save']))
{
   $username=$_POST['un'];
   $password=$_POST['pw'];
   $query="select * from admin where username ='$username'and password ='$password'";
   $result=mysqli_query($con,$query);
   $count=mysqli_num_rows($result);
   if($count>0)
   {
      header('location: adminheader.php');
   }
   else
   {
      echo "Wrong username or password.";

      header('location: adminlogin.php');
   }
   

}
 ?>