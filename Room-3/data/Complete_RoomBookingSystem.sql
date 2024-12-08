
-- Drop and recreate the database
DROP DATABASE IF EXISTS RoomBookingSystem;
CREATE DATABASE RoomBookingSystem;
USE RoomBookingSystem;

-- Create room_types table
CREATE TABLE room_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

-- Insert data into room_types table
INSERT INTO room_types (name, description) VALUES
('Bedroom', 'Rooms designed for accommodation.'),
('Classroom', 'Rooms equipped for educational purposes.'),
('Hall', 'Halls used for meetings or events.'),
('Laboratory', 'Rooms designed for scientific research or study.');

-- Create rooms table
CREATE TABLE rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    room_type_id INT NOT NULL,
    floor INT NOT NULL,
    capacity INT NOT NULL,
    capacity_type ENUM('VipRoom', 'MasterRoom', 'BigRoom', 'Class', 'HallClass', 'CloudLab', 'AILab', 'GeneralLab', 'HallLap') NOT NULL,
    equipment VARCHAR(255),
    description TEXT,
    FOREIGN KEY (room_type_id) REFERENCES room_types(id)
);

-- Populate rooms table
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1001', 1, 0, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1002', 1, 0, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1003', 1, 0, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1004', 1, 0, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1005', 1, 0, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1006', 1, 0, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1007', 1, 0, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1008', 1, 0, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1009', 1, 0, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1010', 1, 0, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1011', 2, 0, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1012', 2, 0, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1013', 2, 0, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1014', 2, 0, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1015', 2, 0, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1016', 2, 0, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1017', 2, 0, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1018', 2, 0, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1019', 2, 0, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1020', 2, 0, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1021', 3, 0, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1022', 3, 0, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1023', 3, 0, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1024', 3, 0, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1025', 3, 0, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1026', 3, 0, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1027', 3, 0, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1028', 3, 0, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1029', 3, 0, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 1030', 3, 0, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2001', 1, 1, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2002', 1, 1, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2003', 1, 1, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2004', 1, 1, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2005', 1, 1, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2006', 1, 1, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2007', 1, 1, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2008', 1, 1, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2009', 1, 1, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2010', 1, 1, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2011', 2, 1, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2012', 2, 1, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2013', 2, 1, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2014', 2, 1, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2015', 2, 1, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2016', 2, 1, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2017', 2, 1, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2018', 2, 1, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2019', 2, 1, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2020', 2, 1, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2021', 3, 1, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2022', 3, 1, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2023', 3, 1, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2024', 3, 1, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2025', 3, 1, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2026', 3, 1, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2027', 3, 1, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2028', 3, 1, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2029', 3, 1, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 2030', 3, 1, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3001', 1, 2, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3002', 1, 2, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3003', 1, 2, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3004', 1, 2, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3005', 1, 2, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3006', 1, 2, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3007', 1, 2, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3008', 1, 2, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3009', 1, 2, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3010', 1, 2, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3011', 2, 2, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3012', 2, 2, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3013', 2, 2, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3014', 2, 2, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3015', 2, 2, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3016', 2, 2, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3017', 2, 2, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3018', 2, 2, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3019', 2, 2, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3020', 2, 2, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3021', 3, 2, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3022', 3, 2, 30, 'Class', 'Projector, Whiteboard', 'Description for Class');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3023', 3, 2, 150, 'HallClass', 'Projector, Whiteboard', 'Description for HallClass');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3024', 3, 2, 20, 'CloudLab', 'Computers, Internet', 'Description for CloudLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3025', 3, 2, 15, 'AILab', 'Computers, Internet', 'Description for AILab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3026', 3, 2, 50, 'GeneralLab', 'Computers, Internet', 'Description for GeneralLab');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3027', 3, 2, 150, 'HallLap', 'Computers, Internet', 'Description for HallLap');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3028', 3, 2, 5, 'VipRoom', 'Computers, Internet', 'Description for VipRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3029', 3, 2, 30, 'MasterRoom', 'Computers, Internet', 'Description for MasterRoom');
INSERT INTO rooms (name, room_type_id, floor, capacity, capacity_type, equipment, description) VALUES
('Room 3030', 3, 2, 150, 'BigRoom', 'Computers, Internet', 'Description for BigRoom');

-- Create timeslots table
CREATE TABLE timeslots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT NOT NULL,
    date DATE NOT NULL,
    timeslot VARCHAR(50) NOT NULL,
    status ENUM('available', 'booked') DEFAULT 'available',
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

-- Populate timeslots table
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(1, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(2, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(3, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(4, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(5, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(6, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(7, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(8, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(9, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(10, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(11, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(12, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(13, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(14, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(15, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(16, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(17, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(18, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(19, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(20, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(21, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(22, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(23, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(24, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(25, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(26, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(27, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(28, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(29, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(30, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(31, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(32, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(33, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(34, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(35, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(36, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(37, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(38, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(39, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(40, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(41, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(42, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(43, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(44, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(45, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(46, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(47, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(48, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(49, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(50, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(51, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(52, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(53, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(54, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(55, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(56, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(57, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(58, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(59, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(60, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(61, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(62, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(63, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(64, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(65, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(66, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(67, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(68, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(69, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(70, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(71, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(72, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(73, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(74, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(75, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(76, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(77, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(78, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(79, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(80, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(81, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(82, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(83, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(84, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(85, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(86, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(87, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(88, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(89, '2024-12-07', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-01', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-01', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-01', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-01', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-01', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-01', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-01', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-01', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-02', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-02', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-02', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-02', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-02', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-02', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-02', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-02', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-03', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-03', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-03', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-03', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-03', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-03', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-03', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-03', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-04', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-04', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-04', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-04', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-04', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-04', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-04', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-04', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-05', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-05', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-05', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-05', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-05', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-05', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-05', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-05', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-06', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-06', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-06', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-06', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-06', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-06', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-06', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-06', '16:00 - 17:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-07', '9:00 - 10:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-07', '10:00 - 11:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-07', '11:00 - 12:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-07', '12:00 - 13:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-07', '13:00 - 14:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-07', '14:00 - 15:00', 'available');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-07', '15:00 - 16:00', 'booked');
INSERT INTO timeslots (room_id, date, timeslot, status) VALUES
(90, '2024-12-07', '16:00 - 17:00', 'available');
