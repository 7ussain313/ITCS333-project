<?php
session_start();
require_once 'Database/connection.php';

// Check if a booking request was made
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_SESSION['user_id'])) {
    try {
        $booking_date = $_POST['booking_date'];
        $timeslot = $_POST['timeslot'];
        $room_id = $_GET['id'];
        $user_id = $_SESSION['user_id'];

        // Check for existing bookings
        $checkStmt = $db->prepare("
            SELECT COUNT(*) FROM Bookings 
            WHERE room_id = ? AND booking_date = ? AND timeslot = ?
        ");
        $checkStmt->execute([$room_id, $booking_date, $timeslot]);
        $exists = $checkStmt->fetchColumn();

        if ($exists) {
            $bookingError = "This timeslot is already booked.";
        } else {
            // Insert new booking
            $insertStmt = $db->prepare("
                INSERT INTO Bookings (user_id, room_id, booking_date, timeslot)
                VALUES (?, ?, ?, ?)
            ");
            $insertStmt->execute([$user_id, $room_id, $booking_date, $timeslot]);
            $bookingSuccess = "Room booked successfully!";
        }
    } catch (PDOException $ex) {
        $bookingError = "Error making booking: " . $ex->getMessage();
    }
}

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    header('Location: browse_rooms.php');
    exit;
}

try {
    $db = new PDO('mysql:host=localhost;dbname=it_college_booking;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Fetch room details
    $stmt = $db->prepare("SELECT * FROM Rooms WHERE id = ?");
    $stmt->execute([$_GET['id']]);
    $room = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$room) {
        header('Location: browse_rooms.php');
        exit;
    }

    // Fetch today's bookings for this room
    $today = date('Y-m-d');
    $stmt = $db->prepare("
        SELECT booking_date, timeslot 
        FROM Bookings 
        WHERE room_id = ? AND booking_date >= ? 
        ORDER BY booking_date, timeslot
    ");
    $stmt->execute([$_GET['id'], $today]);
    $bookings = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch (PDOException $ex) {
    echo "Error: " . $ex->getMessage();
    exit;
}

// Define available timeslots
$timeSlots = [
    '08:00:00' => '8:00 AM',
    '09:00:00' => '9:00 AM',
    '10:00:00' => '10:00 AM',
    '11:00:00' => '11:00 AM',
    '12:00:00' => '12:00 PM',
    '13:00:00' => '1:00 PM',
    '14:00:00' => '2:00 PM',
    '15:00:00' => '3:00 PM',
    '16:00:00' => '4:00 PM'
];

// Get bookings for the next 7 days
$nextWeek = date('Y-m-d', strtotime('+7 days'));
$stmt = $db->prepare("
    SELECT booking_date, timeslot 
    FROM Bookings 
    WHERE room_id = ? AND booking_date BETWEEN CURRENT_DATE AND ?
    ORDER BY booking_date, timeslot
");
$stmt->execute([$_GET['id'], $nextWeek]);
$weekBookings = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($room['name']); ?> - Room Details</title>
    <link rel="stylesheet" href="room_styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css" rel="stylesheet">
</head>
<body>
    <?php include 'navbar.php'; ?>

    <div class="container mt-4">
        <?php if (isset($bookingError)): ?>
            <div class="alert alert-danger"><?php echo $bookingError; ?></div>
        <?php endif; ?>
        <?php if (isset($bookingSuccess)): ?>
            <div class="alert alert-success"><?php echo $bookingSuccess; ?></div>
        <?php endif; ?>

        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title"><?php echo htmlspecialchars($room['name']); ?></h2>
                        <div class="room-info mt-4">
                            <h4>Room Details</h4>
                            <p><strong>Capacity:</strong> <?php echo htmlspecialchars($room['capacity']); ?> people</p>
                            <h4>Equipment</h4>
                            <p><?php echo nl2br(htmlspecialchars($room['equipment'])); ?></p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h4>Make a Booking</h4>
                        <?php if (isset($_SESSION['user_id'])): ?>
                            <form method="POST" id="bookingForm">
                                <div class="mb-3">
                                    <label for="booking_date" class="form-label">Date</label>
                                    <input type="date" class="form-control" id="booking_date" name="booking_date" 
                                           min="<?php echo date('Y-m-d'); ?>" 
                                           max="<?php echo date('Y-m-d', strtotime('+7 days')); ?>" 
                                           required>
                                </div>
                                <div class="mb-3">
                                    <label for="timeslot" class="form-label">Time Slot</label>
                                    <select class="form-control" id="timeslot" name="timeslot" required>
                                        <option value="">Select a time slot</option>
                                        <?php foreach ($timeSlots as $time => $display): ?>
                                            <option value="<?php echo $time; ?>"><?php echo $display; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Book Room</button>
                            </form>
                        <?php else: ?>
                            <div class="alert alert-info">
                                Please <a href="the-login-and-signup/hi.php">login</a> to book this room.
                            </div>
                        <?php endif; ?>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <h4>Availability This Week</h4>
                        <div class="timeslots">
                            <?php 
                            $currentDate = date('Y-m-d');
                            for ($i = 0; $i < 7; $i++) {
                                $date = date('Y-m-d', strtotime("+$i days"));
                                $dayName = date('l', strtotime($date));
                                echo "<h5 class='mt-3'>$dayName (" . date('M j', strtotime($date)) . ")</h5>";
                                
                                foreach ($timeSlots as $time => $display) {
                                    $isBooked = false;
                                    foreach ($weekBookings as $booking) {
                                        if ($booking['booking_date'] == $date && $booking['timeslot'] == $time) {
                                            $isBooked = true;
                                            break;
                                        }
                                    }
                                    ?>
                                    <div class="timeslot <?php echo $isBooked ? 'booked' : 'available'; ?>">
                                        <?php echo $display; ?>
                                        <span class="status"><?php echo $isBooked ? 'Booked' : 'Available'; ?></span>
                                    </div>
                                    <?php
                                }
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script>
        flatpickr("#booking_date", {
            minDate: "today",
            maxDate: new Date().fp_incr(7),
            dateFormat: "Y-m-d"
        });
    </script>
</body>
</html>
