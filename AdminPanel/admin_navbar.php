<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Check if user is admin
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../the-login-and-signup/hi.php");
    exit();
}
?>

<style>
.admin-navbar {
    background: linear-gradient(135deg, #FFC67D 0%, #8BC34A 100%);
    padding: 1rem 2rem;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.admin-navbar .navbar-brand {
    color: white;
    font-weight: 600;
    font-size: 1.5rem;
}

.admin-navbar .nav-link {
    color: white !important;
    margin: 0 0.5rem;
    transition: all 0.3s ease;
    position: relative;
}

.admin-navbar .nav-link:hover {
    transform: translateY(-2px);
}

.admin-navbar .nav-link::after {
    content: '';
    position: absolute;
    width: 0;
    height: 2px;
    bottom: 0;
    left: 0;
    background-color: white;
    transition: width 0.3s ease;
}

.admin-navbar .nav-link:hover::after {
    width: 100%;
}

.btn-admin {
    background-color: white;
    color: #FFC67D !important;
    border: none;
    padding: 0.5rem 1.5rem !important;
    border-radius: 25px;
    font-weight: 500;
    transition: all 0.3s ease;
}

.btn-admin:hover {
    background-color: #f8f9fa;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.admin-badge {
    background-color: white;
    color: #FFC67D;
    padding: 0.25rem 0.75rem;
    border-radius: 15px;
    font-size: 0.8rem;
    margin-left: 0.5rem;
}
</style>

<nav class="navbar navbar-expand-lg admin-navbar">
    <div class="container">
        <a class="navbar-brand" href="/ITCS333-project/AdminPanel/admin_dashboard.php">
            Admin Dashboard
            <span class="admin-badge">Admin Panel</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#adminNavbarNav" aria-controls="adminNavbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="adminNavbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/ITCS333-project/AdminPanel/admin_dashboard.php">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ITCS333-project/AdminPanel/user_management.php">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ITCS333-project/AdminPanel/booking_room_management.php">Rooms</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ITCS333-project/AdminPanel/add_room.php">Add Room</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-admin ms-2" href="/ITCS333-project/index.php">Back to Site</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
