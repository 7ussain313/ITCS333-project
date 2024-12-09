<?php
require_once('../database/connection.php');

function getDashboardStats() {
    global $db;
    $stats = [];

    // Get total users
    $query = "SELECT COUNT(*) as total FROM Users";
    $stmt = $db->query($query);
    $stats['total_users'] = $stmt->fetch(PDO::FETCH_ASSOC)['total'];

    // Get available rooms
    $query = "SELECT COUNT(*) as total FROM Rooms";
    $stmt = $db->query($query);
    $stats['available_rooms'] = $stmt->fetch(PDO::FETCH_ASSOC)['total'];

    // Get active bookings (bookings for today and future)
    $query = "SELECT COUNT(*) as total FROM Bookings WHERE booking_date >= CURDATE()";
    $stmt = $db->query($query);
    $stats['active_bookings'] = $stmt->fetch(PDO::FETCH_ASSOC)['total'];

    // Calculate occupancy rate
    $query = "SELECT 
        (COUNT(*) * 100.0 / (SELECT COUNT(*) * 8 FROM Rooms)) as rate 
        FROM Bookings 
        WHERE booking_date = CURDATE()";
    $stmt = $db->query($query);
    $occupancy = $stmt->fetch(PDO::FETCH_ASSOC)['rate'];
    $stats['occupancy_rate'] = round($occupancy ?? 0);

    // Get recent activities
    $query = "SELECT 
        b.created_at,
        u.firstName,
        u.lastName,
        r.name as room_name,
        b.booking_date,
        b.timeslot
        FROM Bookings b
        JOIN Users u ON b.user_id = u.id
        JOIN Rooms r ON b.room_id = r.id
        ORDER BY b.created_at DESC
        LIMIT 5";
    $stmt = $db->query($query);
    $stats['recent_bookings'] = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Get recent user registrations
    $query = "SELECT firstName, lastName, created_at 
              FROM Users 
              ORDER BY created_at DESC 
              LIMIT 5";
    $stmt = $db->query($query);
    $stats['recent_users'] = $stmt->fetchAll(PDO::FETCH_ASSOC);

    return $stats;
}
?>
