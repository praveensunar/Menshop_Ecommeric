<?php   
$con=mysqli_connect("localhost","root","","store"); //database connection  
 //hostname, username, password, database name  
 if ($con) {  
     // echo "Connection successfully";  
 }else{  
      echo "Error";  
 }  
 //check database connect or not  
 $query="select * from users_items";  
 $connect=mysqli_query($con,$query);  
 $num=mysqli_num_rows($connect); //check in database any data have or not  
 ?>  
 <!DOCTYPE html>  
 <html>  
 <head>  
      <meta charset="utf-8">  
      <title> Display Database orders Table</title>  
      <style type="text/css">  
           *{  
                padding: 0;  
                margin: 0;  
                box-sizing: border-box;  
           }  
           body{  
                width: 100%;
                min-height: 100vh;  
                background-color: #e0e0d1;  
           }  
           .container{  
                max-width: 900px;  
                margin: 50px auto;  
                width: 100%;  
           }  
           table{  
                border-collapse: collapse;  
                width: 100%;  
           }  
           table th{  
                background-color: #b3f0ff;  
                color: black;  
                padding: 10px;  
           }  
           table td{  
                padding: 10px;  
                color: black;  
                font-size: 1em;  
                text-align: center;  
           }  
          
             
      </style>  
 </head>  
 <body>  
 <div class="container">
    <h1 align='center'>Orders</h1>  
      <table border="1">  
           <tr>  
                <th>Id</th>  
                <th>User-Id</th>  
                <th>Item-Id</th>  
                <th>Status</th>
                
           </tr>  
           <?php   
                if ($num>0) {  
                     while($data=mysqli_fetch_assoc($connect)){  
                          echo "  
                               <tr>  
                               <td>".$data['id']."</td>  
                               <td>".$data['user_id']."</td>  
                               <td>".$data['item_id']."</td>  
                               <td>".$data['status']."</td>  
                               </tr>  
                          ";  
                     }  
                }  
           ?>  
      </table>  
 </div>  
 </body>  
 </html>  