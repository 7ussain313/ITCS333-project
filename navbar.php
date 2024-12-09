<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>

<style>
    .navbar-nav .nav-link.clicked {
        color: #9A9A9AFF ;
    }

    .navbar-nav .nav-link:visited {
        color: #838383FF ;
    }

    .navbar {
        padding-top: 1rem; 
        padding-bottom: 1rem;
    }

    .navbar-nav .nav-link {
        font-size: 20px;
        color: #FFFFFFFF ;
    }

    .navbar-brand {
        font-size: 34px; 
        color: #FFFFFFFF ;
    }

    .navbar-nav .nav-link:hover {
        color: #FFFFFFFF ;
        background-color: transparent ; 
    }
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container">
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
                        <a class="nav-link" href="the-login-and-signup/logout.php">Logout</a>
                    </li>
                <?php else: ?>
                    <li class="nav-item">
                        <a class="nav-link" href="the-login-and-signup/hi.php">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="the-login-and-signup/signup.php">Sign Up</a>
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
