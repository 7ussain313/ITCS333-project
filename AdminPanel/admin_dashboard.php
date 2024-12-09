<?php
require_once('../database/connection.php');
require_once('dashboard_stats.php');

session_start();

// Check if user is admin
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../the-login-and-signup/hi.php");
    exit();
}

$stats = getDashboardStats();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Montserrat', sans-serif;
        }
        .dashboard-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            margin-bottom: 20px;
            border: none;
        }
        .dashboard-card:hover {
            transform: translateY(-5px);
        }
        .card-icon {
            font-size: 2.5rem;
            color: #FFC67D;
            margin-bottom: 1rem;
        }
        .stat-number {
            font-size: 2rem;
            font-weight: 600;
            color: #2c3e50;
        }
        .stat-label {
            color: #7f8c8d;
            font-size: 1rem;
        }
        .quick-action {
            padding: 1rem;
            border-radius: 10px;
            background: linear-gradient(135deg, #FFC67D 0%, #8BC34A 100%);
            color: white;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        .quick-action:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            color: white;
        }
        .activity-time {
            font-size: 0.8rem;
            color: #95a5a6;
        }
    </style>
</head>
<body>
    <?php include 'admin_navbar.php'; ?>

    <div class="container mt-4">
        <div class="row">
            <div class="col-md-3">
                <div class="dashboard-card p-4 text-center">
                    <i class="fas fa-users card-icon"></i>
                    <div class="stat-number"><?php echo $stats['total_users']; ?></div>
                    <div class="stat-label">Total Users</div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="dashboard-card p-4 text-center">
                    <i class="fas fa-door-open card-icon"></i>
                    <div class="stat-number"><?php echo $stats['available_rooms']; ?></div>
                    <div class="stat-label">Available Rooms</div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="dashboard-card p-4 text-center">
                    <i class="fas fa-calendar-check card-icon"></i>
                    <div class="stat-number"><?php echo $stats['active_bookings']; ?></div>
                    <div class="stat-label">Active Bookings</div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="dashboard-card p-4 text-center">
                    <i class="fas fa-chart-line card-icon"></i>
                    <div class="stat-number"><?php echo $stats['occupancy_rate']; ?>%</div>
                    <div class="stat-label">Today's Occupancy Rate</div>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-6">
                <div class="dashboard-card p-4">
                    <h4 class="mb-4">Quick Actions</h4>
                    <div class="d-grid gap-3">
                        <a href="add_room.php" class="quick-action d-block">
                            <i class="fas fa-plus-circle me-2"></i> Add New Room
                        </a>
                        <a href="view_room.php" class="quick-action d-block">
                            <i class="fas fa-plus-circle me-2"></i> View Rooms
                        </a>
                        <a href="user_management.php" class="quick-action d-block">
                            <i class="fas fa-user-cog me-2"></i> Manage Users
                        </a>
                        <a href="booking_room_management.php" class="quick-action d-block">
                            <i class="fas fa-calendar-alt me-2"></i> View Bookings
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="dashboard-card p-4">
                    <h4 class="mb-4">Recent Activity</h4>
                    <div class="list-group">
                        <?php foreach ($stats['recent_bookings'] as $booking): ?>
                            <div class="list-group-item border-0 mb-2 rounded">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">New Booking</h6>
                                    <small class="activity-time">
                                        <?php 
                                        $booking_time = new DateTime($booking['created_at']);
                                        $now = new DateTime();
                                        $interval = $booking_time->diff($now);
                                        if ($interval->d > 0) {
                                            echo $interval->d . ' days ago';
                                        } elseif ($interval->h > 0) {
                                            echo $interval->h . ' hours ago';
                                        } else {
                                            echo $interval->i . ' mins ago';
                                        }
                                        ?>
                                    </small>
                                </div>
                                <p class="mb-1">
                                    <?php echo htmlspecialchars($booking['firstName'] . ' ' . $booking['lastName']); ?> 
                                    booked <?php echo htmlspecialchars($booking['room_name']); ?>
                                    for <?php echo date('M j, Y', strtotime($booking['booking_date'])); ?>
                                    at <?php echo date('g:i A', strtotime($booking['timeslot'])); ?>
                                </p>
                            </div>
                        <?php endforeach; ?>

                        <?php foreach ($stats['recent_users'] as $user): ?>
                            <div class="list-group-item border-0 rounded">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">New User Registration</h6>
                                    <small class="activity-time">
                                        <?php 
                                        $reg_time = new DateTime($user['created_at']);
                                        $now = new DateTime();
                                        $interval = $reg_time->diff($now);
                                        if ($interval->d > 0) {
                                            echo $interval->d . ' days ago';
                                        } elseif ($interval->h > 0) {
                                            echo $interval->h . ' hours ago';
                                        } else {
                                            echo $interval->i . ' mins ago';
                                        }
                                        ?>
                                    </small>
                                </div>
                                <p class="mb-1">
                                    <?php echo htmlspecialchars($user['firstName'] . ' ' . $user['lastName']); ?> 
                                    registered in the system
                                </p>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
