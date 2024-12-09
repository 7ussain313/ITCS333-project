<?php
require_once('../database/connection.php');
session_start();

// Check if the user is an admin
if ($_SESSION['role'] != 'admin') {
    echo 'not authorized';
    exit();
}

// Check if the user_id is set and delete the user
if (isset($_POST['user_id'])) {
    $userId = $_POST['user_id'];

    $deleteQuery = "DELETE FROM Users WHERE id = :id";
    $deleteStmt = $db->prepare($deleteQuery);
    $deleteStmt->bindParam(':id', $userId);

    if ($deleteStmt->execute()) {
        echo 'success'; 
    } else {
        echo 'error';  
    }
} else {
    echo 'error';  
}
?>
