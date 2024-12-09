<?php
require_once('../database/connection.php');

// Check if the user is logged in as admin
session_start();
if ($_SESSION['role'] != 'admin') {
    header("Location: hi.php");
    exit();
}

// Handle delete booking action
if (isset($_GET['delete_id'])) {
    $deleteId = intval($_GET['delete_id']);
    $deleteStmt = $db->prepare("DELETE FROM Bookings WHERE id = :id");
    $deleteStmt->bindParam(':id', $deleteId, PDO::PARAM_INT);
    $deleteStmt->execute();
    header("Location: booking_room_management.php");
    exit();
}

// Handle new booking submission
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['book_room'])) {
    $userId = intval($_POST['user_id']);
    $roomId = intval($_POST['room_id']);
    $bookingDate = $_POST['booking_date'];
    $timeslot = $_POST['timeslot'];

    // Check if the booking date is in the past
    if (strtotime($bookingDate) < time()) {
        $errorMessage = "Error: You cannot book a room for a past date.";
    } else {
        // Insert new booking
        $insertStmt = $db->prepare("INSERT INTO Bookings (user_id, room_id, booking_date, timeslot) 
                                    VALUES (:user_id, :room_id, :booking_date, :timeslot)");
        $insertStmt->bindParam(':user_id', $userId);
        $insertStmt->bindParam(':room_id', $roomId);
        $insertStmt->bindParam(':booking_date', $bookingDate);
        $insertStmt->bindParam(':timeslot', $timeslot);

        try {
            $insertStmt->execute();
            header("Location: booking_room_management.php");
            exit();
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }
}

// Fetch all bookings
$bookingsStmt = $db->query("
    SELECT Bookings.id AS booking_id, Users.firstName, Users.lastName, Rooms.name AS room_name, 
           Bookings.booking_date, Bookings.timeslot 
    FROM Bookings
    JOIN Users ON Bookings.user_id = Users.id
    JOIN Rooms ON Bookings.room_id = Rooms.id
");
$bookings = $bookingsStmt->fetchAll(PDO::FETCH_ASSOC);

// Fetch all users and rooms for booking form
$usersStmt = $db->query("SELECT id, CONCAT(firstName, ' ', lastName) AS full_name FROM Users");
$users = $usersStmt->fetchAll(PDO::FETCH_ASSOC);

$roomsStmt = $db->query("SELECT id, name FROM Rooms");
$rooms = $roomsStmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Booking Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">

     <!-- Back to Admin Dashboard Button -->
     <a href="admin_dashboard.php" class="btn btn-secondary mb-4">Back to Admin Dashboard</a>

        <h1>Booking Management</h1>

        <!-- New Booking Form -->
        <div class="card mb-4">
            <div class="card-header">Book a Room</div>
            <div class="card-body">
                <!-- Error Message -->
                <?php if (isset($errorMessage)): ?>
                    <div class="alert alert-danger">
                        <?php echo htmlspecialchars($errorMessage); ?>
                    </div>
                <?php endif; ?>

                <form method="POST">
                    <div class="mb-3">
                        <label for="user_id" class="form-label">User</label>
                        <select id="user_id" name="user_id" class="form-control" required>
                            <option value="">Select User</option>
                            <?php foreach ($users as $user): ?>
                                <option value="<?php echo $user['id']; ?>"><?php echo htmlspecialchars($user['full_name']); ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="room_id" class="form-label">Room</label>
                        <select id="room_id" name="room_id" class="form-control" required>
                            <option value="">Select Room</option>
                            <?php foreach ($rooms as $room): ?>
                                <option value="<?php echo $room['id']; ?>"><?php echo htmlspecialchars($room['name']); ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="booking_date" class="form-label">Booking Date</label>
                        <input type="date" id="booking_date" name="booking_date" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="timeslot" class="form-label">Timeslot</label>
                        <input type="time" id="timeslot" name="timeslot" class="form-control" required>
                    </div>
                    <button type="submit" name="book_room" class="btn btn-primary">Book Room</button>
                </form>
            </div>
        </div>

        <!-- Bookings List -->
        <div class="card">
            <div class="card-header">Booked Rooms</div>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>User</th>
                            <th>Room</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($bookings as $booking): ?>
                            <tr>
                                <td><?php echo htmlspecialchars($booking['firstName'] . ' ' . $booking['lastName']); ?></td>
                                <td><?php echo htmlspecialchars($booking['room_name']); ?></td>
                                <td><?php echo htmlspecialchars($booking['booking_date']); ?></td>
                                <td><?php echo htmlspecialchars($booking['timeslot']); ?></td>
                                <td>
                                    <a href="booking_room_management.php?delete_id=<?php echo $booking['booking_id']; ?>" 
                                       class="btn btn-danger btn-sm" 
                                       onclick="return confirm('Are you sure you want to delete this booking?');">Delete</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
