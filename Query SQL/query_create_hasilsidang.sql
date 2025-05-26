
CREATE TABLE hasil_sidang (
id_hasil INT auto_increment PRIMARY KEY,
id_sidang INT,
nilai INT(3) NOT NULL,
catatan VARCHAR(100) NOT NULL,
FOREIGN KEY (id_sidang) REFERENCES sidang (id_sidang)
);