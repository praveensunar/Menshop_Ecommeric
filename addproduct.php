<?php

?>
<!DOCTYPE html>  
 <html>  
 <head>  
      <meta charset="utf-8">  
      <title> Display Database user Table</title>  
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
          button{
             
               margin:10px;
               background-color:#00b300;
               margin-bottom:10px;
               border-radius:5px;
               width:50px;
          }
             
      </style>  
 </head>  
 <body> 
     
 <div class="container">
 <form action="add_code.php" method="POST">
    <h1 align='center'>ADD PRODUCTS DETAILS</h1>  
      <table border="2">  
           <tr>  
                <th>ID</th>  
                <th>Product Name</th>  
                <th colspan="2">Price</th>
           </tr>    
          <tr>  
          <td> <input type="text" name="id" placeholder="Product Id" style="width: 95%;height: 30px; text-align:center; background-color:#e0ebeb; "> </td>  
          
          <td> <input type="text" name="name" placeholder="Product Name"style="width: 95%;height: 30px; text-align:center; background-color:#e0ebeb;" > </td>  
          <td><input type="text" name="price" placeholder="Product Price" style="width: 95%;height: 30px; text-align:center; background-color:#e0ebeb;"> </td>
          <td> <button  name="submit"onclick="window.location.href='product.php';" >
     Add
    </button> </td> 
      </tr>  
      </table>  
      </form>
 </div>
    
 </body>  
 </html>  