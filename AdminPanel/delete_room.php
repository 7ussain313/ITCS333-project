<?php
require_once('../database/connection.php');
session_start();

if ($_SESSION['role'] != 'admin') {
    header("Location: ../the-login-and-signup/hi.php");
    exit();
}

if (isset($_POST['delete'])) {
    $roomId = $_POST['room_id'];

    // Delete the room
    $query = "DELETE FROM Rooms WHERE id = :id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':id', $roomId);

    if ($stmt->execute()) {
        echo "<div class='alert alert-success'>Room deleted successfully!</div>";
        // Refresh the page or redirect to dashboard after deletion
        header("Refresh: 2; url=admin_dashboard.php");
    } else {
        echo "<div class='alert alert-danger'>Error deleting room.</div>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script>
        // Function to trigger modal display
        function showConfirmModal(roomId, roomName) {
            // Set the room ID and name in the modal
            document.getElementById("room_id").value = roomId;
            document.getElementById("room_name").innerText = roomName;
            // Show the modal
            const modal = new bootstrap.Modal(document.getElementById('confirmModal'));
            modal.show();
        }
    </script>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Room Management</h1>
        <?php
        if (isset($_GET['id'])) {
            $roomId = $_GET['id'];
            // Fetch the room details to display the name
            $query = "SELECT * FROM Rooms WHERE id = :id";
            $stmt = $db->prepare($query);
            $stmt->bindParam(':id', $roomId);
            $stmt->execute();
            $room = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($room) {
                echo "<button class='btn btn-danger' onclick='showConfirmModal($roomId, \"" . htmlspecialchars($room['name']) . "\")'>Delete Room</button>";
            } else {
                echo "<div class='alert alert-warning'>Room not found.</div>";
            }
        }
        ?>

        <!-- Modal for Confirmation -->
        <div class="modal fade" id="confirmModal" tabindex="-1" aria-labelledby="confirmModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="confirmModalLabel">Confirm Deletion</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Are you sure you want to delete the room <strong id="room_name"></strong>?
                    </div>
                    <div class="modal-footer">
                        <form action="delete_room.php" method="POST">
                            <input type="hidden" id="room_id" name="room_id">
                            <button type="submit" name="delete" class="btn btn-danger">Yes, Delete</button>
                        </form>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Back to Dashboard Button -->
        <a href="admin_dashboard.php" class="btn btn-secondary mt-3">Back to Dashboard</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
