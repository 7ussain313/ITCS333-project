<?php
session_start();
require_once('../database/connection.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
</head>
<body>
    <div style="text-align:center; padding:15%;">
      <p  style="font-size:50px; font-weight:bold;">
       Hello  <?php 
       if(isset($_SESSION['email'])){
        $email = $_SESSION['email'];
        
        // Use PDO query method
        $query = $db->prepare("SELECT firstName, lastName FROM users WHERE email = :email");
        $query->bindParam(':email', $email);
        $query->execute();
        
        // Fetch the result
        if ($row = $query->fetch(PDO::FETCH_ASSOC)) {
            echo $row['firstName'].' '.$row['lastName'];
        }
       }
       ?>
       
      </p>
      <a href="logout.php">Logout</a>
    </div>
</body>
</html>
