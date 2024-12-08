<?php
// Database connection
$host = "localhost";
$username = "root";
$password = "";
$dbname = "RoomBookingSystem"; // Replace with your actual database name

try {
    // Establish connection using PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Initialize the base query
    $query = "SELECT rooms.id, rooms.name, rooms.capacity, rooms.equipment, rooms.description, room_types.name AS room_type
              FROM rooms
              LEFT JOIN room_types ON rooms.room_type_id = room_types.id";
    
    // Initialize an array to store filters and parameters
    $conditions = [];
    $params = [];

    // Capacity filter
    if (isset($_GET['capacity']) && !empty($_GET['capacity'])) {
        $capacityFilter = $_GET['capacity'];
        if ($capacityFilter == '1-5') {
            $conditions[] = "rooms.capacity BETWEEN :minCapacity AND :maxCapacity";
            $params[':minCapacity'] = 1;
            $params[':maxCapacity'] = 5;
        } elseif ($capacityFilter == '6-10') {
            $conditions[] = "rooms.capacity BETWEEN :minCapacity AND :maxCapacity";
            $params[':minCapacity'] = 6;
            $params[':maxCapacity'] = 10;
        } elseif ($capacityFilter == '11+') {
            $conditions[] = "rooms.capacity >= :minCapacity";
            $params[':minCapacity'] = 11;
        }
    }

    // Equipment filter
    if (isset($_GET['equipment']) && !empty($_GET['equipment'])) {
        $conditions[] = "FIND_IN_SET(:equipment, rooms.equipment)";
        $params[':equipment'] = $_GET['equipment'];
    }

    // Search filter
    if (isset($_GET['search']) && !empty($_GET['search'])) {
        $conditions[] = "rooms.name LIKE :search";
        $params[':search'] = '%' . $_GET['search'] . '%';
    }

    // Append conditions to the query if any exist
    if (!empty($conditions)) {
        $query .= " WHERE " . implode(' AND ', $conditions);
    }

    // Prepare and execute the query
    $stmt = $pdo->prepare($query);
    $stmt->execute($params);

    // Fetch all matching rooms
    $rooms = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Return results as JSON
    header('Content-Type: application/json');
    echo json_encode($rooms);
} catch (PDOException $e) {
    // Handle database connection errors gracefully
    header('Content-Type: application/json', true, 500);
    echo json_encode(["error" => "Database error: " . $e->getMessage()]);
}


?>
