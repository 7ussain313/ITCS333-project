<?php
session_start();
require_once 'Database/connection.php';

// Redirect if not logged in
if (!isset($_SESSION['user_id'])) {
    header('Location: the-login-and-signup/hi.php');
    exit();
}

try {
    $db = new PDO('mysql:host=localhost;dbname=it_college_booking;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Handle booking cancellation
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['cancel_booking'])) {
        $booking_id = $_POST['booking_id'];
        
        // Verify the booking belongs to the user
        $stmt = $db->prepare("
            SELECT user_id FROM Bookings 
            WHERE id = ? AND user_id = ? AND booking_date >= CURRENT_DATE
        ");
        $stmt->execute([$booking_id, $_SESSION['user_id']]);
        
        if ($stmt->rowCount() > 0) {
            $deleteStmt = $db->prepare("DELETE FROM Bookings WHERE id = ?");
            $deleteStmt->execute([$booking_id]);
            $cancelSuccess = "Booking cancelled successfully!";
        } else {
            $cancelError = "Unable to cancel booking. It might be in the past or not belong to you.";
        }
    }

    // Fetch user's bookings
    $stmt = $db->prepare("
        SELECT b.*, r.name as room_name
        FROM Bookings b
        JOIN Rooms r ON b.room_id = r.id
        WHERE b.user_id = ?
        ORDER BY b.booking_date DESC, b.timeslot DESC
    ");
    $stmt->execute([$_SESSION['user_id']]);
    $bookings = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch (PDOException $ex) {
    $error = "Database error: " . $ex->getMessage();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Bookings - Room Booking System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="room_styles.css">
</head>
<body>
    <?php include 'navbar.php'; ?>

    <div class="container mt-4">
        <h2>My Bookings</h2>

        <?php if (isset($cancelSuccess)): ?>
            <div class="alert alert-success"><?php echo $cancelSuccess; ?></div>
        <?php endif; ?>

        <?php if (isset($cancelError)): ?>
            <div class="alert alert-danger"><?php echo $cancelError; ?></div>
        <?php endif; ?>

        <?php if (isset($error)): ?>
            <div class="alert alert-danger"><?php echo $error; ?></div>
        <?php endif; ?>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <?php if (empty($bookings)): ?>
                            <p class="text-center">You don't have any bookings yet.</p>
                        <?php else: ?>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Room</th>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($bookings as $booking): 
                                            $isPast = strtotime($booking['booking_date']) < strtotime('today');
                                            $status = $isPast ? 'Past' : 'Upcoming';
                                            ?>
                                            <tr>
                                                <td><?php echo htmlspecialchars($booking['room_name']); ?></td>
                                                <td><?php echo date('l, M j, Y', strtotime($booking['booking_date'])); ?></td>
                                                <td><?php echo date('g:i A', strtotime($booking['timeslot'])); ?></td>
                                                <td>
                                                    <span class="badge <?php echo $isPast ? 'bg-secondary' : 'bg-primary'; ?>">
                                                        <?php echo $status; ?>
                                                    </span>
                                                </td>
                                                <td>
                                                    <?php if (!$isPast): ?>
                                                        <form method="POST" style="display: inline;">
                                                            <input type="hidden" name="booking_id" value="<?php echo $booking['id']; ?>">
                                                            <button type="submit" name="cancel_booking" class="btn btn-danger btn-sm"
                                                                    onclick="return confirm('Are you sure you want to cancel this booking?')">
                                                                Cancel
                                                            </button>
                                                        </form>
                                                    <?php endif; ?>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
