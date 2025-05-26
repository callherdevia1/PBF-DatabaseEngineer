create view V_nilaimahasiswa AS
SELECT
    mahasiswa.nama_mahasiswa, 
    mahasiswa.NIM,  
    hasil_sidang.nilai, 
    hasil_sidang.catatan
FROM mahasiswa
INNER JOIN sidang
INNER JOIN hasil_sidang
ON sidang.id_sidang = hasil_sidang.id_sidang
AND mahasiswa.NIM = sidang.NIM;
