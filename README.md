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
- User - Mahasiswa (One to One)
  
  Setiap mahasiswa adalah user
- User - Dosen (One to One)
  
  Setiap dosen adalah user
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
## DATABASE (Navicat)
Dalam membuat dan menyimpan database dapat melalui banyak cara misalnya saja menggunakan xampp atau navicat.
Disini saya menggunakan Navicat, karena lebih mudah baik itu memasukan query atau melakukan Create, Insert, ataupun Join.

- CREATE: Digunakan untuk membuat tabel maupun view
- INSERT: Digunakan untuk memasukan data ke tabel
- JOIN: Digunakan untuk menggabungkan data dari dua atau lebih tabel berdasarkan relasi antar tabel tersebut (biasanya lewat foreign key).
![gambar](https://github.com/user-attachments/assets/9a00fa9e-927b-411b-aea0-daa817147cd9)

