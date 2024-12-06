<?php
require_once('C:/xampp/htdocs/ITCS-333-Course-Project/database/connection.php');
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
            echo "Room updated successfully!";
            header("Location: admin_dashboard.php");
        } else {
            echo "Error updating room.";
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
    <link rel="stylesheet" href="path/to/bootstrap.css">
</head>
<body>
    <div class="container">
        <h1>Edit Room</h1>
        <form action="edit_room.php?id=<?php echo $roomId; ?>" method="POST">
            <div class="form-group">
                <label for="name">Room Name</label>
                <input type="text" class="form-control" name="name" value="<?php echo htmlspecialchars($room['name']); ?>" required>
            </div>
            <div class="form-group">
                <label for="capacity">Capacity</label>
                <input type="number" class="form-control" name="capacity" value="<?php echo htmlspecialchars($room['capacity']); ?>" required>
            </div>
            <div class="form-group">
                <label for="equipment">Equipment</label>
                <textarea class="form-control" name="equipment" required><?php echo htmlspecialchars($room['equipment']); ?></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Update Room</button>
        </form>
    </div>
</body>
</html>
