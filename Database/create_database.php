<?php

try {
    // Connect to MySQL server
    $db = new PDO('mysql:host=localhost;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Create database
    $db->exec("CREATE DATABASE IF NOT EXISTS it_college_booking");
    

    // Connect to the newly created database
    $db->exec("USE it_college_booking");

    // SQL statements to create tables
    $sql = "
    -- Create Departments table
    CREATE TABLE IF NOT EXISTS Departments (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL UNIQUE,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

    -- Create Users table
    CREATE TABLE IF NOT EXISTS Users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL,
        phone_number VARCHAR(15),
        department_id INT,
        role ENUM('user', 'admin') DEFAULT 'user',
        profile_picture VARCHAR(255),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (department_id) REFERENCES Departments(id) ON DELETE SET NULL
    );

    -- Create Rooms table
    CREATE TABLE IF NOT EXISTS Rooms (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) UNIQUE NOT NULL,
        capacity INT NOT NULL,
        equipment TEXT,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

    -- Create Bookings table
    CREATE TABLE IF NOT EXISTS Bookings (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        room_id INT NOT NULL,
        booking_date DATE NOT NULL,
        timeslot TIME NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE CASCADE,
        FOREIGN KEY (room_id) REFERENCES Rooms(id) ON DELETE CASCADE,
        UNIQUE (room_id, booking_date, timeslot) -- Prevent conflicting bookings
    );

    -- Create Login_History table
    CREATE TABLE IF NOT EXISTS Login_History (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        ip_address VARCHAR(45),
        FOREIGN KEY (user_id) REFERENCES Users(id)
    );
    ";

    // Execute the SQL
    $db->exec($sql);
   

    // Close the connection
    $db = null;
} catch (PDOException $ex) {
    echo "Error occurred! " . $ex->getMessage();
    exit;
}
?>