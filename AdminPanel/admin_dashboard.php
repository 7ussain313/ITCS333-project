<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');

// Check if the user is logged in as admin
session_start();
if ($_SESSION['role'] != 'admin') {
    header("Location: login.php");
    exit();
}

// Fetch rooms from the database
$query = "SELECT * FROM Rooms";
$stmt = $db->prepare($query);
$stmt->execute();
$rooms = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Room Management</title>
    <link rel="stylesheet" href="path/to/bootstrap.css"> <!-- Use PicoCSS or Bootstrap -->
</head>
<body>
    <div class="container">
        <h1>Room Management</h1>
        <a href="add_room.php" class="btn btn-primary">Add New Room</a>
        <table class="table mt-4">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Capacity</th>
                    <th>Equipment</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($rooms as $room): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($room['name']); ?></td>
                        <td><?php echo htmlspecialchars($room['capacity']); ?></td>
                        <td><?php echo htmlspecialchars($room['equipment']); ?></td>
                        <td>
                            <a href="edit_room.php?id=<?php echo $room['id']; ?>" class="btn btn-warning">Edit</a>
                            <a href="delete_room.php?id=<?php echo $room['id']; ?>" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</body>
</html>
