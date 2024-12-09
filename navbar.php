<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>

<style>
.navbar {
    background: linear-gradient(135deg, #FFC67D 0%, #8BC34A 100%);
    padding: 1rem 2rem;
}

.navbar-brand {
    color: white !important;
    font-size: 1.5rem;
    font-weight: 600;
}

.navbar-nav .nav-link {
    color: white !important;
    font-size: 1rem;
    padding: 0.5rem 1rem !important;
    margin: 0 0.2rem;
    transition: opacity 0.3s;
}

.navbar-nav .nav-link:hover {
    opacity: 0.8;
}

.navbar-toggler {
    border-color: rgba(255,255,255,0.5);
}

.navbar-toggler-icon {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 255, 255, 0.7%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
}

.btn-coral {
    background-color: #FFC67D;
    color: white;
    border: none;
    padding: 0.5rem 1rem;
    font-size: 1rem;
    cursor: pointer;
}

.btn-coral:hover {
    background-color: #FFA07A;
}
</style>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.php">Room Booking System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="browse_rooms.php">Browse Rooms</a>
                </li>
                <?php if (isset($_SESSION['user_id'])): ?>
                    <li class="nav-item">
                        <a class="nav-link" href="UserProfileManagement/userprofile.php">My Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="manage_bookings.php">My Bookings</a>
                    </li>
                    <?php if (isset($_SESSION['role']) && $_SESSION['role'] === 'admin'): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="AdminPanel/admin_dashboard.php">Admin Dashboard</a>
                        </li>
                    <?php endif; ?>
                <?php endif; ?>
            </ul>
            <ul class="navbar-nav">
                <?php if (isset($_SESSION['user_id'])): ?>
                    <li class="nav-item">
                        <a class="nav-link btn btn-coral ms-2 px-4" href="the-login-and-signup/logout.php">Logout</a>
                    </li>
                <?php else: ?>
                    <li class="nav-item">
                        <a class="nav-link btn btn-coral ms-2 px-4" href="the-login-and-signup/hi.php">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="the-login-and-signup/hi.php">Sign Up</a>
                    </li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</nav>

<script>
    // Add the click class to links when they are clicked
    const links = document.querySelectorAll('.navbar-nav .nav-link');
    links.forEach(link => {
        link.addEventListener('click', function() {
            // Remove click class from all links
            links.forEach(l => l.classList.remove('clicked'));
            // Add click class to the clicked link
            this.classList.add('clicked');
        });
    });
</script>
