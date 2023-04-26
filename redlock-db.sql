CREATE DATABASE Redlock;
USE Redlock;

CREATE TABLE users (
 ID INT PRIMARY KEY NOT NULL,
 Nama VARCHAR(150) NOT NULL,
 Alamat VARCHAR(150) NOT NULL,
 Jabatan VARCHAR(150) NOT NULL
);

INSERT INTO users VALUES 
(1, 'Antonyous', 'Jakarta', 'Rektor'),
(2, 'Mikhael', 'Bogor', 'Dosen'),
(3, 'Aleksander', 'Bandung', 'Mahasiswa');
