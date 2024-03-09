<?php
    include("connection.php");

    $id = $_POST['id'];
    $name = $_POST['name'];
    $price = $_POST['price'];

        $insert = mysqli_query($con, "insert into items (id, name, price) values('$id', '$name', '$price') ");
$result = mysqli_query($con,$insert);
    if($result)
    {
       echo "Id no is allready taken";
    }
        else{
             header("location:product.php");
        }
    

?>