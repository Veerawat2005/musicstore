<?php
header('Content-Type: application/json'); // บอกว่า response เป็น JSON

$host = "localhost";
$user = "root";   // user ของ phpMyAdmin
$pass = "";       // ถ้ามี password ให้ใส่
$db   = "musicstore"; // database ที่คุณสร้าง

$conn = new mysqli($host, $user, $pass, $db);

// ตรวจสอบการเชื่อมต่อ
if ($conn->connect_error) {
    // ถ้าเชื่อมต่อไม่สำเร็จ ส่ง JSON error
    echo json_encode([
        "success" => false,
        "error" => "Connection failed: " . $conn->connect_error
    ]);
    exit;
}

// ตั้งค่า charset
$conn->set_charset("utf8");

// ถ้าเชื่อมต่อสำเร็จ ส่ง JSON success
echo json_encode([
    "success" => true,
    "message" => "Connection successful"
]);
?>
