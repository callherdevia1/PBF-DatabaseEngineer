create view v_jadwalsidang AS
SELECT
	mahasiswa.nama_mahasiswa, 
	mahasiswa.NIM, 
	mahasiswa.prodi, 
	dosen.nama_dosen, 
	sidang.waktu_sidang, 
	sidang.ruang_sidang
FROM
	mahasiswa,
	dosen,
	sidang
WHERE
  mahasiswa.NIM=sidang.NIM AND dosen.NIDN= sidang.NIDN