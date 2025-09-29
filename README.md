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
<img width="1217" height="830" alt="Screenshot 2025-09-29 110827" src="https://github.com/user-attachments/assets/b7c3ca44-e644-4dc5-baf4-cf3c7450d819" />


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
GET -ดึงสินค้าทีละอัน



<img width="777" height="777" alt="Screenshot 2025-09-29 112357" src="https://github.com/user-attachments/assets/87ee1c0f-e4b6-4aa1-b7b0-943e35c36655" />

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
POST -(เพิ่มสินค้า)




<img width="612" height="662" alt="Screenshot 2025-09-29 112600" src="https://github.com/user-attachments/assets/7d57a82d-3565-4dcb-9adf-c0f2eea1f3e9" />
<img width="1243" height="82" alt="Screenshot 2025-09-29 112637" src="https://github.com/user-attachments/assets/f9c4c50f-e50c-4aa1-b8b7-abed213115c4" />



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
PUT -(แก้สินค้า)




<img width="646" height="533" alt="Screenshot 2025-09-29 112906" src="https://github.com/user-attachments/assets/4ff1454e-d3e1-4032-8b2a-575d65d90849" />


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE -ลบสินค้า ในกรณีนี้จะลบสินค้า id1





<img width="635" height="623" alt="Screenshot 2025-09-29 112923" src="https://github.com/user-attachments/assets/b6661b6b-4e80-445a-84c6-2a3e65ee301c" />
