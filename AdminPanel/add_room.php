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
        echo "<div class='alert alert-success mt-4'>Room added successfully!</div>";
        header("Location: admin_dashboard.php");
    } else {
        echo "<div class='alert alert-danger mt-4'>Error adding room.</div>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Room</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional: Custom CSS -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container mt-5">
        <!-- Page Heading -->
        <h1 class="text-center mb-4">Add New Room</h1>

        <!-- Room Addition Form -->
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h5 class="card-title mb-0">Room Details</h5>
            </div>
            <div class="card-body">
                <form action="add_room.php" method="POST">
                    <div class="form-group mb-3">
                        <label for="name">Room Name</label>
                        <input type="text" class="form-control" name="name" id="name" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="capacity">Capacity</label>
                        <input type="number" class="form-control" name="capacity" id="capacity" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="equipment">Equipment</label>
                        <textarea class="form-control" name="equipment" id="equipment" rows="3" required></textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Add Room</button>
                    </div>
                </form>
            </div>
        </div>

        <!-- Back to Dashboard Button -->
        <div class="text-center mt-4">
            <a href="admin_dashboard.php" class="btn btn-secondary">Back to Dashboard</a>
        </div>
    </div>

    <!-- Bootstrap 5 JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    