<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');
session_start();

if ($_SESSION['role'] != 'admin') {
    header("Location: login.php");
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

        $query = "UPDATE Rooms SET name = :name, capacity = :capacity, equipment = :equipment WHERE id = :id";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':capacity', $capacity);
        $stmt->bindParam(':equipment', $equipment);
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
        <form action="edit_room.php?id=<?php echo $roomId; ?>" method="POST">
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
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-primary">Update Room</button>
                    <a href="admin_dashboard.php" class="btn btn-secondary">Cancel</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
