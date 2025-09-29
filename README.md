*การทำงานของ products.php
ไฟล์ products.php ทำงานเป็น RESTful API สำหรับจัดการข้อมูลสินค้าในฐานข้อมูล musicstore โดยรองรับ 4 วิธีหลัก:

Method	 การทำงาน	            ตัวอย่าง URL / Body
GET	     ดึงข้อมูลสินค้า	       - ทั้งหมด: products.php
                             - ทีละรายการ: products.php?id=1
                             
POST	   เพิ่มสินค้าใหม่	         Body (JSON) เช่น { "name":"New Album CD", "description":"อัลบั้มใหม่ล่าสุด", "price":400, "category":"CD", "stock":12 }

PUT	     แก้ไขสินค้า	           URL: products.php?id=1
                             Body (JSON) เช่น { "price":450, "stock":15 }
                             
DELETE	 ลบสินค้า	           URL: products.php?id=1

*การเรียกใช้งานใน Postman
GET – ดึงสินค้าทั้งหมด
ฃ
