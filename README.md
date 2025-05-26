# PBF-DatabaseSidangAkhir
## 💻 Database
Database merupakan tempat kumpulan data yang teroganisir secara rapi yang disimpan dalam suatu sistem dikomputer yang nantinya data tersebut dapat digunakan, dikelola, dan dapat diperbarui informasi data datanya.

Database dapat disimpan di: XAMPP(MYSQL), Navicat, atau diserver lainnya.
## ERD (Entity Relationship Diagram) draw.io.
ERD dalam membuat sebuah sistem digunakan untuk menggambarkan secara detail sebuah entitas/tabel serta relasi antar entitasnya dalam sebuah sistem yang dibuat.

Fungsi ERD Yang Lain:
- Memahami kolom, data/tipe data apa saja yang akan dibuat (int,char,varchar, etc.)
- Sebagai acuan untuk membuat tabel didalam database.
- Mengurangi kesalahan saat membuat database.
![gambar](https://github.com/user-attachments/assets/228aa3b1-219a-4444-9bd5-675125b1970e)

Sebelumnya terdapat revisi pada tabel mahasiswa dari tipe data char menjadi varchar.

## Relations (Relasi Antar Tabel)
- Mahasiswa - Sidang (One to Many)
  
  Satu mahasiswa bisa mengikuti lebih dari satu sidang(ikut sidang ulang).
- Mahasiswa - Notifikasi (One to Many)
  
  Satu mahasiswa bisa menerima banyak notifikasi
- Dosen - Sidang (One to Many)
  
  Satu dosen bisa menguji banyak sidang.
- Dosen - Notifikasi (One to Many)
  
  Satu dosen bisa mengrimkan banyak notifikasi ke banyak mahasiswa.
- Sidang - Hasil_Sidang (One to One)
  
  Satu sidang hanya memiliki satu hasil.
## SQL (Navicat)
Dalam membuat dan menyimpan database dapat melalui banyak cara misalnya saja menggunakan xampp atau navicat. Disini saya menggunakan Navicat, karena lebih mudah baik itu memasukan query atau melakukan Create, Insert, ataupun Join.

- CREATE: Digunakan untuk membuat tabel maupun view
- INSERT: Digunakan untuk memasukan data ke tabel
- JOIN: Digunakan untuk menggabungkan data dari dua atau lebih tabel berdasarkan relasi antar tabel tersebut (biasanya lewat foreign key).
  
Notes :

DROP TABLE IF EXISTS Mahasiswa berarti perintah untuk menghapus tabel Mahasiswa kalau tabel itu ada atau bisa juga biar nggak error kalau tabel sebelumnya udah pernah dibuat.
![gambar](https://github.com/user-attachments/assets/9a00fa9e-927b-411b-aea0-daa817147cd9)

## TEST BACKEND (Local)
1. Download Zip Lalu Extract
   
   ![gambar](https://github.com/user-attachments/assets/31bc54c3-f9f2-487a-99d1-07bd5513a2c9)
3. Masukan Ke VSCODE
   
   Ketikan ke terminal : php spark serve
   
   Perintah CodeIgniter 4 (CI4) untuk menjalankan web server lokal (development server) langsung dari terminal.
   ![gambar](https://github.com/user-attachments/assets/3a40bcbd-764f-4c16-9911-dfa43d4ee88b)
5. Check Postman
   ![gambar](https://github.com/user-attachments/assets/dd7a253d-096c-4111-82ac-2ce4138d542c)
## TEST FRONTEND (Local)
1. Download Zip lalu Extract
   
   ![gambar](https://github.com/user-attachments/assets/2361665a-96e1-4b7a-8827-6814e0dbfcee)
3. Masukkan Ke VSCODE
   
   Ketikan ke terminal : php artisan serve
   
   Perintah Laravel (framework PHP) untuk menjalankan server lokal. Jika sudah jadi nanti akan muncul link lalu di klik saja.
   ![gambar](https://github.com/user-attachments/assets/4f42c4f9-4709-40ca-9887-d69fbc6a049a)
4. Tampilan
   ![gambar](https://github.com/user-attachments/assets/0ea8d14b-2407-44f3-8dee-478653468c97)
   
   ![gambar](https://github.com/user-attachments/assets/724cf296-4b32-4085-9a51-a62b654dffaa)


   ![gambar](https://github.com/user-attachments/assets/0f0f4ce2-7873-4968-9319-9e4c03e738af)







