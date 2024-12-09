<?php
require_once('../database/connection.php');
session_start();

if ($_SESSION['role'] != 'admin') {
    header("Location: ../the-login-and-signup/hi.php");
    exit();
}

if (isset($_GET['id'])) {
    $roomId = $_GET['id'];

    // Fetch room data
    $query = "SELECT * FROM Rooms WHERE id = :id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':id', $roomId);
    $stmt->execute();
    $room = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$room) {
        echo "Room not found.";
        exit();
    }

    // Handle form submission
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $name = $_POST['name'];
        $capacity = $_POST['capacity'];
        $equipment = $_POST['equipment'];
        $image_path = $room['image_path'];

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
                    // Delete the old image if it exists
                    if (!empty($room['image_path']) && file_exists($room['image_path'])) {
                        unlink($room['image_path']);
                    }
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

        $query = "UPDATE Rooms SET name = :name, capacity = :capacity, equipment = :equipment, image_url = :image_url WHERE id = :id";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':capacity', $capacity);
        $stmt->bindParam(':equipment', $equipment);
        $stmt->bindParam(':image_url', $image_path);
        $stmt->bindParam(':id', $roomId);

        if ($stmt->execute()) {
            echo "<div class='alert alert-success'>Room updated successfully!</div>";
            header("Refresh: 2; url=admin_dashboard.php");
        } else {
            echo "<div class='alert alert-danger'>Error updating room.</div>";
        }
    }
} else {
    echo "Invalid room ID.";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Edit Room Details</h1>

        <!-- Form for editing room -->
        <form action="edit_room.php?id=<?php echo $roomId; ?>" method="POST" enctype="multipart/form-data">
            <div class="card p-4 shadow-sm">
                <div class="form-group mb-3">
                    <label for="name">Room Name</label>
                    <input type="text" class="form-control" name="name" value="<?php echo htmlspecialchars($room['name']); ?>" required>
                </div>
                <div class="form-group mb-3">
                    <label for="capacity">Capacity</label>
                    <input type="number" class="form-control" name="capacity" value="<?php echo htmlspecialchars($room['capacity']); ?>" required>
                </div>
                <div class="form-group mb-3">
                    <label for="equipment">Equipment</label>
                    <textarea class="form-control" name="equipment" required><?php echo htmlspecialchars($room['equipment']); ?></textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="room_picture">Room Picture</label>
                    <input type="file" class="form-control" name="room_picture" accept="image/*">
                    <?php if (!empty($room['image_url'])): ?>
                        <img src="<?php echo $room['image_url']; ?>" alt="Current Room Image" width="200" class="mt-2">
                    <?php endif; ?>
                </div>
                <button type="submit" class="btn btn-primary">Update Room</button>
            </div>
        </form>

        <!-- Back to Dashboard Button -->
        <div class="text-center mt-4">
            <a href="admin_dashboard.php" class="btn btn-secondary">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
