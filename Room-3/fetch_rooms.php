<?php
// Database connection
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php'); 

try {
    // Base query to fetch data from Rooms
    $query = "SELECT id, name, capacity, equipment, created_at FROM Rooms";

    // Initialize an array to store filters and parameters
    $conditions = [];
    $params = [];

    // Capacity filter
    if (isset($_GET['capacity']) && !empty($_GET['capacity'])) {
        $capacityFilter = $_GET['capacity'];
        switch ($capacityFilter) {
            case '1-5':
                $conditions[] = "capacity BETWEEN :minCapacity AND :maxCapacity";
                $params[':minCapacity'] = 1;
                $params[':maxCapacity'] = 5;
                break;
            case '6-50':
                $conditions[] = "capacity BETWEEN :minCapacity AND :maxCapacity";
                $params[':minCapacity'] = 6;
                $params[':maxCapacity'] = 50;
                break;
            case '51-150':
                $conditions[] = "capacity BETWEEN :minCapacity AND :maxCapacity";
                $params[':minCapacity'] = 51;
                $params[':maxCapacity'] = 150;
                break;
        }
    }

    // Equipment filter
    if (isset($_GET['equipment']) && !empty($_GET['equipment'])) {
        $conditions[] = "FIND_IN_SET(:equipment, equipment)";
        $params[':equipment'] = $_GET['equipment'];
    }

    // Search filter
    if (isset($_GET['search']) && !empty($_GET['search'])) {
        $conditions[] = "name LIKE :search";
        $params[':search'] = '%' . $_GET['search'] . '%';
    }

    // Append conditions to the query if any exist
    if (!empty($conditions)) {
        $query .= " WHERE " . implode(' AND ', $conditions);
    }

    // Prepare and execute the query
    $stmt = $db->prepare($query);
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
