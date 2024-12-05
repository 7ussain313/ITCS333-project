<?php
require_once('C:/xampp/htdocs/ITCS 333 Course Project/database/connection.php');
session_start();

if ($_SESSION['role'] != 'admin') {
    header("Location: login.php");
    exit();
}

if (isset($_GET['id'])) {
    $roomId = $_GET['id'];

    // Delete the room
    $query = "DELETE FROM Rooms WHERE id = :id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':id', $roomId);

    if ($stmt->execute()) {
        echo "Room deleted successfully!";
        header("Location: admin_dashboard.php");
    } else {
        echo "Error deleting room.";
    }
} else {
    echo "Invalid room ID.";
    exit();
}
?>
