<?php
require_once('../database/connection.php');
session_start();

// Check if user is admin
if ($_SESSION['role'] != 'admin') {
    header("Location: ../the-login-and-signup/hi.php");
    exit();
}

// Fetch all rooms from the database
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
    <title>View Rooms</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Montserrat', sans-serif;
        }
        .room-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            margin-bottom: 20px;
            border: none;
        }
        .room-card:hover {
            transform: translateY(-5px);
        }
        .room-name {
            font-size: 1.5rem;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <?php include 'admin_navbar.php'; ?>

    <div class="container mt-4">
        <h1 class="text-center mb-4">Manage Rooms</h1>
        <a href="add_room.php" class="btn btn-primary mb-4">Add New Room</a>

        <?php if (empty($rooms)): ?>
            <div class="alert alert-warning">No rooms available.</div>
        <?php else: ?>
            <div class="row">
                <?php foreach ($rooms as $room): ?>
                    <div class="col-md-4">
                        <div class="card room-card">
                            <div class="card-body">
                                <h5 class="room-name"><?php echo htmlspecialchars($room['name']); ?></h5>
                                <p><strong>Capacity:</strong> <?php echo htmlspecialchars($room['capacity']); ?></p>
                                <p><strong>Equipment:</strong> <?php echo htmlspecialchars($room['equipment']); ?></p>
                                <a href="edit_room.php?id=<?php echo $room['id']; ?>" class="btn btn-warning">Edit</a>
                                <button class="btn btn-danger" onclick="showDeleteModal(<?php echo $room['id']; ?>, '<?php echo htmlspecialchars($room['name']); ?>')">Delete</button>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>

        <!-- Modal for Deletion Confirmation -->
        <div class="modal fade" id="confirmDeleteModal" tabindex="-1" aria-labelledby="confirmDeleteModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="confirmDeleteModalLabel">Confirm Deletion</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Are you sure you want to delete the room <strong id="roomName"></strong>?
                    </div>
                    <div class="modal-footer">
                        <form action="delete_room.php" method="POST">
                            <input type="hidden" id="roomId" name="room_id">
                            <button type="submit" name="delete" class="btn btn-danger">Yes, Delete</button>
                        </form>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Function to display the delete confirmation modal
        function showDeleteModal(roomId, roomName) {
            document.getElementById('roomId').value = roomId;
            document.getElementById('roomName').innerText = roomName;
            const modal = new bootstrap.Modal(document.getElementById('confirmDeleteModal'));
            modal.show();
        }
    </script>
</body>
</html>
