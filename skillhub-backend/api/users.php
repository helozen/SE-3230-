<?php
include_once '../config/db.php';

$database = new Database();
$db = $database->getConnection();

$action = $_GET['action'] ?? '';

if ($action == 'register') {
    $data = json_decode(file_get_contents("php://input"));
    $query = "INSERT INTO users (name, email, password, phone, user_type) VALUES (?, ?, ?, ?, ?)";
    $stmt = $db->prepare($query);
    $stmt->execute([$data->name, $data->email, password_hash($data->password, PASSWORD_BCRYPT), $data->phone, $data->user_type]);
    echo json_encode(["message" => "User registered successfully"]);
}
?>
