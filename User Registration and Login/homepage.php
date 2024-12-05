<?php
session_start();
require_once('C:/xampp/htdocs/ITCS 333 Course Project/database/connection.php');
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
        <p style="font-size:50px; font-weight:bold;">
            Hello  
            <?php 
            if (isset($_SESSION['email'])) {
                $email = $_SESSION['email'];
                $query = $db->prepare("SELECT name FROM Users WHERE email = ?");
                $query->execute([$email]);
                $row = $query->fetch(PDO::FETCH_ASSOC);
                echo htmlspecialchars($row['name']);
            }
            ?>
        </p>
        <a href="logout.php">Logout</a>
    </div>
</body>
</html>
