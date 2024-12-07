<?php
class Database {
    private $conn;
    
    public function __construct() {
        try {
            $this->conn = new PDO(
                "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME,
                DB_USER,
                DB_PASS
            );
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }
    
    public function getUser($userId) {
        $stmt = $this->conn->prepare("SELECT * FROM users WHERE email = ?");
        $stmt->execute([$userId]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
    
    public function updateUser($userId, $data) {
        $stmt = $this->conn->prepare("
            UPDATE users 
            SET full_name = ?, email = ?, phone = ?, department = ?
            WHERE id = ?
        ");
        return $stmt->execute([
            $data['fullName'],
            $data['email'],
            $data['phone'],
            $data['department'],
            $userId
        ]);
    }
    
    public function updateProfilePicture($userId, $imagePath) {
        $stmt = $this->conn->prepare("
            UPDATE users 
            SET profile_picture = ?
            WHERE id = ?
        ");
        return $stmt->execute([$imagePath, $userId]);
    }
}
?>