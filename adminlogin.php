<?php
    require 'connection.php';
    session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="img/lifestyleStore.png" />
        <title>MenStore</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div>
            <?php
                require 'header.php';
            ?>
            <br><br><br>
           <div class="container">
                <div class="row">
                    <div class="col-xs-6 col-xs-offset-3">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3>ADMIN LOGIN</h3>
                            </div>
                            <div class="panel-body">
                                <p>Login for adminer.</p>
                                <form method="post" action="admin_submit.php">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="un" placeholder="User Name" >
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="pw" placeholder="Password(min. 6 characters)">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" name="save" value="Login" class="btn btn-primary">
                                    </div>
                                </form>
                            </div>
                    </div>
                </div>
           </div>
           <br><br><br><br><br>
           <footer class="footer">
               <div class="container">
               <center>
               <p>Copyright &copy Menshop. All Rights Reserved. | Contact Us: +91 90000 00000</p>
                   <p>This website is developed by Praveen</p>
               </center>
               </div>
           </footer>
        </div>
    </body>
</html>
