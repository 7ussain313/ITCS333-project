<?php
session_start();
require_once 'Database/connection.php';

try {
    $db = new PDO('mysql:host=localhost;dbname=it_college_booking;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Get the capacity range from the search bar if it's set
    $capacity_filter = isset($_GET['capacity']) ? $_GET['capacity'] : '';

    // Fetch rooms based on the selected capacity range
    if ($capacity_filter === '1-30') {
        $stmt = $db->query("SELECT * FROM Rooms WHERE capacity BETWEEN 1 AND 30 ORDER BY name");
    } elseif ($capacity_filter === '31-60') {
        $stmt = $db->query("SELECT * FROM Rooms WHERE capacity BETWEEN 31 AND 60 ORDER BY name");
    } elseif ($capacity_filter === '61+') {
        $stmt = $db->query("SELECT * FROM Rooms WHERE capacity > 60 ORDER BY name");
    } else {
        // If no filter is selected, fetch all rooms
        $stmt = $db->query("SELECT * FROM Rooms ORDER BY name");
    }

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

        <!-- Search Bar for Capacity -->
        <form method="get" class="mb-4">
            <label for="capacity" class="form-label">Filter by Capacity:</label>
            <select name="capacity" id="capacity" class="form-select">
                <option value="">Select Capacity Range</option>
                <option value="1-30" <?php echo ($capacity_filter == '1-30') ? 'selected' : ''; ?>>1-30</option>
                <option value="31-60" <?php echo ($capacity_filter == '31-60') ? 'selected' : ''; ?>>31-60</option>
                <option value="61+" <?php echo ($capacity_filter == '61+') ? 'selected' : ''; ?>>61+</option>
            </select>
            <button type="submit" class="btn btn-primary mt-2">Apply Filter</button>
        </form>

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
