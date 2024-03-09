<html>
<head>
<style>
    body{
  background-attachment: fixed;
  background-size: 100% 100%;
        }
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
}

li {
  float: left;
  width: 25%;
  background-color: lightsteelblue;
}

li a {
  display: block;
  color: black;
  text-align: center;
  padding: 10px 50px;
  text-decoration: none;
}

li a:hover {
  background-color:buttonface;
}
h1{
    font-family: cursive;
    text-align: center;
    color: lightcoral;
    background-color: lightsteelblue;
}
</style>
</head>
<body>
        <h1>ADMIN</h1>
        <a href="index.php" class="navbar-brand" style="color:#ffcccc; font-family:'Brush script MT'cursive; font-size:25px">MenShop</a>
    <ul>
        <li><a class="active" href="displayuser.php">User's</a></li>
  <li><a href="product.php">Products</a></li>
  <li><a href="orders.php">Orders</a></li>
  <li><a href="adminlogout.php"><b>Logout</b></a></li>
    </ul>
</body>
</html>
                    