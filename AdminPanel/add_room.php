<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');
session_start();

if ($_SESSION['role'] != 'admin') {
    header("Location: login.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST['name'];
    $capacity = $_POST['capacity'];
    $equipment = $_POST['equipment'];

    $query = "INSERT INTO Rooms (name, capacity, equipment) VALUES (:name, :capacity, :equipment)";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':capacity', $capacity);
    $stmt->bindParam(':equipment', $equipment);
    
    if ($stmt->execute()) {
        echo "Room added successfully!";
        header("Location: admin_dashboard.php");
    } else {
        echo "Error adding room.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Room</title>
    <link rel="stylesheet" href="path/to/bootstrap.css">
</head>
<body>
    <div class="container">
        <h1>Add Room</h1>
        <form action="add_room.php" method="POST">
            <div class="form-group">
                <label for="name">Room Name</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="form-group">
                <label for="capacity">Capacity</label>
                <input type="number" class="form-control" name="capacity" required>
            </div>
            <div class="form-group">
                <label for="equipment">Equipment</label>
                <textarea class="form-control" name="equipment" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Add Room</button>
        </form>
    </div>
</body>
</html>
