<?php
class Database
{
    private $host = "localhost"; // Database host
    private $db_name = "skillhub"; // Database name
    private $username = "root"; // MySQL username
    private $password = ""; // MySQL password
    public $conn;

    // Method to establish a connection
    public function getConnection()
    {
        $this->conn = null;

        try {
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $exception) {
            echo "Connection error: " . $exception->getMessage();
        }

        return $this->conn;
    }
}
?>