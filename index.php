<?php
require_once('database/create_database.php');
require_once('database/connection.php');
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Booking System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="theme.css">
    <style>
        .hero-section {
            background-color: var(--card-background);
            padding: 4rem 0;
            border-radius: var(--border-radius);
            margin: 2rem 0;
            text-align: center;
        }

        .hero-title {
            color: var(--text-dark);
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 1.5rem;
        }

        .hero-subtitle {
            color: var(--primary-color);
            font-size: 1.2rem;
            margin-bottom: 2rem;
            font-weight: 500;
        }

        .welcome-message {
            background-color: var(--primary-color);
            color: var(--text-light);
            padding: 1rem 2rem;
            border-radius: 50px;
            display: inline-block;
            margin-bottom: 2rem;
            font-weight: 500;
        }

        .features-section {
            padding: 4rem 0;
        }

        @media (max-width: 768px) {
            .hero-title {
                font-size: 2rem;
            }
            
            .hero-subtitle {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <?php include 'navbar.php'; ?>

    <div class="container">
        <section class="hero-section">
            <?php if (isset($_SESSION['user_id'])): ?>
                <div class="welcome-message">
                    Welcome back, <?php echo htmlspecialchars($_SESSION['firstName'] ?? 'User'); ?>!
                </div>
            <?php endif; ?>
            <h1 class="hero-title">Room Booking System</h1>
            <p class="hero-subtitle">Book your perfect room with ease and efficiency</p>
            <?php if (!isset($_SESSION['user_id'])): ?>
                <a href="the-login-and-signup/hi.php" class="btn btn-coral">Get Started</a>
            <?php else: ?>
                <a href="browse_rooms.php" class="btn btn-coral">Browse Rooms</a>
            <?php endif; ?>
        </section>

        <section class="features-section">
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="feature-card">
                        <i class="fas fa-calendar-check feature-icon"></i>
                        <h3 class="h4 mb-3">Easy Booking</h3>
                        <p class="text-muted">Book your room in just a few clicks with our intuitive booking system</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="feature-card">
                        <i class="fas fa-clock feature-icon"></i>
                        <h3 class="h4 mb-3">Real-time Availability</h3>
                        <p class="text-muted">Check room availability in real-time and secure your preferred time slot</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="feature-card">
                        <i class="fas fa-user-circle feature-icon"></i>
                        <h3 class="h4 mb-3">User Profiles</h3>
                        <p class="text-muted">Manage your bookings and preferences through your personal profile</p>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
