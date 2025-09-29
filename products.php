<?php
header("Content-Type: application/json; charset=UTF-8");
include "db.php";

$method = $_SERVER['REQUEST_METHOD'];

// ดึง id ถ้ามี ?id=1
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

switch ($method) {
    case 'GET':
        if ($id > 0) {
            // ดูข้อมูลสินค้า 1 รายการ
            $sql = "SELECT * FROM products WHERE id=$id";
            $result = $conn->query($sql);
            echo json_encode($result->fetch_assoc());
        } else {
            // ดูข้อมูลสินค้าทั้งหมด
            $sql = "SELECT * FROM products";
            $result = $conn->query($sql);
            $rows = [];
            while($row = $result->fetch_assoc()) {
                $rows[] = $row;
            }
            echo json_encode($rows);
        }
        break;

    case 'POST':
        // เพิ่มสินค้าใหม่
        $data = json_decode(file_get_contents("php://input"), true);
        $name = $conn->real_escape_string($data['name']);
        $description = $conn->real_escape_string($data['description']);
        $price = $data['price'];
        $category = $conn->real_escape_string($data['category']);
        $stock = $data['stock'];

        $sql = "INSERT INTO products (name, description, price, category, stock) 
                VALUES ('$name', '$description', $price, '$category', $stock)";
        if ($conn->query($sql)) {
            echo json_encode(["message" => "Product created successfully"]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    case 'PUT':
        // แก้ไขสินค้า
        $data = json_decode(file_get_contents("php://input"), true);
        $name = $conn->real_escape_string($data['name']);
        $description = $conn->real_escape_string($data['description']);
        $price = $data['price'];
        $category = $conn->real_escape_string($data['category']);
        $stock = $data['stock'];

        $sql = "UPDATE products SET 
                    name='$name', description='$description', 
                    price=$price, category='$category', stock=$stock
                WHERE id=$id";
        if ($conn->query($sql)) {
            echo json_encode(["message" => "Product updated successfully"]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    case 'DELETE':
        // ลบสินค้า
        $sql = "DELETE FROM products WHERE id=$id";
        if ($conn->query($sql)) {
            echo json_encode(["message" => "Product deleted successfully"]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    default:
        echo json_encode(["error" => "Invalid request method"]);
}
?>
