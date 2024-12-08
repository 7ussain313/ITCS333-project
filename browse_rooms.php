<?php
session_start();
require_once 'Database/connection.php';

try {
    $db = new PDO('mysql:host=localhost;dbname=it_college_booking;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Fetch all rooms
    $stmt = $db->query("SELECT * FROM Rooms ORDER BY name");
    $rooms = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $ex) {
    echo "Error: " . $ex->getMessage();
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Browse Rooms - IT College Booking</title>
    <link rel="stylesheet" href="room_styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?php include 'navbar.php'; ?>

    <div class="container mt-4">
        <h2>Available Rooms</h2>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <?php foreach ($rooms as $room): ?>
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo htmlspecialchars($room['name']); ?></h5>
                        <p class="card-text">
                            <strong>Capacity:</strong> <?php echo htmlspecialchars($room['capacity']); ?> people
                        </p>
                        <a href="room_details.php?id=<?php echo $room['id']; ?>" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
