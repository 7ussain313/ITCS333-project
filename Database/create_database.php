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

-- Insert initial department data
INSERT IGNORE INTO Departments (name)
VALUES ('Computer Science'), ('Information Systems'), ('Computer Engineering');

-- Create Room Types table
CREATE TABLE IF NOT EXISTS Room_Types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

-- Create Rooms table
CREATE TABLE IF NOT EXISTS Rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    room_type_id INT NOT NULL,
    floor INT NOT NULL,
    capacity INT NOT NULL,
    capacity_type ENUM('VipRoom', 'MasterRoom', 'BigRoom', 'Class', 'HallClass', 'CloudLab', 'AILab', 'GeneralLab', 'HallLap') NOT NULL,
    equipment VARCHAR(255),
    description TEXT,
    FOREIGN KEY (room_type_id) REFERENCES Room_Types(id)
);

-- Create Timeslots table
CREATE TABLE IF NOT EXISTS Timeslots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT NOT NULL,
    date DATE NOT NULL,
    timeslot VARCHAR(50) NOT NULL,
    status ENUM('available', 'booked') DEFAULT 'available',
    FOREIGN KEY (room_id) REFERENCES Rooms(id)
);

-- Create Users table
CREATE TABLE IF NOT EXISTS Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15),
    department_id INT,
    role ENUM('user', 'admin') DEFAULT 'user',
    profile_picture VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES Departments(id) ON DELETE SET NULL
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

    echo "Database and tables created successfully!";
    $db = null; // Close the connection
} catch (PDOException $ex) {
    echo "Error occurred! " . $ex->getMessage();
    exit;
}
?>
