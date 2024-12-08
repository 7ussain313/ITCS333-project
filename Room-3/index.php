<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');

session_start();  // Ensure session is started here
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Room Booking System for IT College">
    <title>Room Booking System</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>Room Booking System</h1>
            <p>Find and book the perfect room for your needs.</p>
        </div>
    </header>

    <main class="container">
        <!-- Filters Section -->
        <section class="filters">
            <!-- Search Bar -->
            <label for="searchBar" class="visually-hidden">Search for rooms</label>
            <input 
                type="text" 
                id="searchBar" 
                class="search-bar" 
                placeholder="Search rooms by name..." 
                aria-label="Search rooms by name"
            >

            <!-- Capacity Filter -->
            <label for="capacityFilter" class="visually-hidden">Filter by room capacity</label>
            <select class="filter-select" id="capacityFilter" aria-label="Filter by room capacity">
                <option value="">Room Capacity</option>
                <option value="1-5">1-5 people (VipRoom)</option>
                <option value="6-50">6-50 people (MasterRoom)</option>
                <option value="50-150">51-150 people (BigRoom)</option>
            </select>

            <!-- Equipment Filter -->
            <label for="equipmentFilter" class="visually-hidden">Filter by equipment</label>
            <select class="filter-select" id="equipmentFilter" aria-label="Filter by equipment">
                <option value="">Equipment</option>
                <option value="projector">Projector</option>
                <option value="whiteboard">Whiteboard</option>
                <option value="videoconf">Video Conference</option>
            </select>
        </section>

        <!-- Rooms Grid -->
        <section class="rooms-grid" aria-live="polite">
            <!-- Room cards will be dynamically generated here -->
        </section>
    </main>

    <!-- Modal for Room Details -->
    <div id="room-details-modal" class="modal" aria-hidden="true" role="dialog" aria-labelledby="modal-title">
        <div class="modal-content">
            <button 
                class="close-btn" 
                onclick="closeDetails()" 
                aria-label="Close room details modal"
            >
                X
            </button>
            <h2 id="modal-title">Room Details</h2>
            <div id="room-details">
                <!-- Room details will be dynamically inserted here -->
                <!-- Reservation Form -->
                <form id="reservation-form">
                    <div>
                        <label for="reservationDate">Reservation Date:</label>
                        <input type="date" id="reservationDate" name="reservationDate" required>
                    </div>
                    <div>
                        <label for="reservationTime">Reservation Time:</label>
                        <input type="time" id="reservationTime" name="reservationTime" required>
                    </div>
                    <div>
                        <label for="availableSlots">Available Slots:</label>
                        <span id="availableSlots">N/A</span>
                    </div>
                    <button type="submit">Reserve</button>
                </form>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <p>&copy; 2024 Room Booking System. All rights reserved.</p>
        </div>
    </footer>

    <script src="script.js"></script>
</body>
</html>
