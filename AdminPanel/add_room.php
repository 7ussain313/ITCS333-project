<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');
session_start();

// Check if the user is an admin
if ($_SESSION['role'] != 'admin') {
    header("Location: login.php");
    exit();
}

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST['name'];
    $capacity = $_POST['capacity'];
    $equipment = $_POST['equipment'];
    $image_path = null;

    // Handle file upload
    if (isset($_FILES['room_picture']) && $_FILES['room_picture']['error'] == 0) {
        $target_dir = "uploads/rooms/";
        $target_file = $target_dir . basename($_FILES["room_picture"]["name"]);
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        // Validate file type
        $allowed_types = ['jpg', 'jpeg', 'png', 'gif'];
        if (in_array($imageFileType, $allowed_types)) {
            // Create directory if it doesn't exist
            if (!file_exists($target_dir)) {
                mkdir($target_dir, 0777, true);
            }

            // Move uploaded file
            if (move_uploaded_file($_FILES["room_picture"]["tmp_name"], $target_file)) {
                $image_path = $target_file;
            } else {
                echo "<div class='alert alert-danger mt-4'>Error uploading file.</div>";
                exit();
            }
        } else {
            echo "<div class='alert alert-danger mt-4'>Invalid file type. Only JPG, JPEG, PNG, and GIF are allowed.</div>";
            exit();
        }
    }

    // Insert room data into the database
    $query = "INSERT INTO Rooms (name, capacity, equipment, image_path) VALUES (:name, :capacity, :equipment, :image_path)";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':capacity', $capacity);
    $stmt->bindParam(':equipment', $equipment);
    $stmt->bindParam(':image_path', $image_path);

    if ($stmt->execute()) {
        echo "<div class='alert alert-success mt-4'>Room added successfully!</div>";
        header("Location: admin_dashboard.php");
        exit();
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
                <form action="add_room.php" method="POST" enctype="multipart/form-data">
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
                    <div class="form-group mb-3">
                        <label for="room_picture">Room Picture</label>
                        <input type="file" class="form-control" name="room_picture" id="room_picture" accept="image/*" required>
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
