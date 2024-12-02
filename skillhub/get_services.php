<?php
header("Content-Type: application/json");
$conn = new mysqli("localhost", "root", "", "skillhub");

if ($conn->connect_error) {
    die(json_encode(["error" => $conn->connect_error]));
}

$sql = "SELECT * FROM services";
$result = $conn->query($sql);
$data = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

echo json_encode($data);
$conn->close();
?>
