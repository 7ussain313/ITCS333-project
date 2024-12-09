<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');

// Check if the user is logged in as admin
session_start();
if ($_SESSION['role'] != 'admin') {
    header("Location: hi.php");
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
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional: Include a custom CSS file for additional styling -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar">
                <div class="position-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">
                                Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="booking_room_management.php">
                                Booked Rooms
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="user_management.php">
                                User Management
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ITCS333-project/index.php">
                                home Page
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- Main content -->
            <main class="col-md-9 ms-sm-auto col-lg-10 px-4">
                <h1 class="mt-4 mb-4">Room Management</h1>

                <!-- Action buttons -->
                <div class="mb-3">
                    <a href="add_room.php" class="btn btn-primary">Add New Room</a>
                </div>

                <!-- Table of Rooms -->
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Rooms List</h5>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
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
                                            <a href="edit_room.php?id=<?php echo $room['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                                            <a href="delete_room.php?id=<?php echo $room['id']; ?>" class="btn btn-danger btn-sm">Delete</a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap 5 JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
