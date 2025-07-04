
CREATE TABLE Sidang (
  id_sidang INT AUTO_INCREMENT PRIMARY KEY,
  NIM CHAR(9),
  NIDN CHAR(10),
  waktu_sidang DATETIME NOT NULL,
  ruang_sidang VARCHAR (30) NOT NULL,
  FOREIGN KEY (NIM) REFERENCES mahasiswa (NIM),
  FOREIGN KEY (NIDN) REFERENCES dosen (NIDN),
UNIQUE (NIM, waktu_sidang));