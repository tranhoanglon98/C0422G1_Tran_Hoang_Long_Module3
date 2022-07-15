DROP DATABASE IF EXISTS quan_ly_hoc_sinh;

CREATE DATABASE quan_ly_hoc_sinh;

USE quan_ly_hoc_sinh;

CREATE TABLE hoc_sinh (
    ma_hoc_sinh VARCHAR(20) PRIMARY KEY,
    ten_hoc_sinh VARCHAR(45) NOT NULL,
    ngay_sinh DATETIME NOT NULL,
    lop VARCHAR(20) NOT NULL,
    gt VARCHAR(20) NOT NULL
);

CREATE TABLE mon_hoc (
    ma_mon_hoc VARCHAR(20) PRIMARY KEY,
    ten_mon_hoc VARCHAR(50) NOT NULL
);

CREATE TABLE bang_diem (
    ma_hoc_sinh VARCHAR(20),
    ma_mon_hoc VARCHAR(20),
    diem_thi INT NOT NULL,
    ngay_kiem_traT DATETIME NOT NULL,
    PRIMARY KEY (ma_hoc_sinh , ma_mon_hoc),
    FOREIGN KEY (ma_hoc_sinh)
        REFERENCES hoc_sinh (ma_hoc_sinh),
    FOREIGN KEY (ma_mon_hoc)
        REFERENCES mon_hoc (ma_mon_hoc)
);

CREATE TABLE giao_vien (
    ma_giao_vien VARCHAR(20) PRIMARY KEY,
    ten_giao_vien VARCHAR(20) NOT NULL,
    so_dien_thoai VARCHAR(10) NOT NULL UNIQUE
);

ALTER TABLE mon_hoc 
	ADD ma_giao_vien VARCHAR(20);
    
ALTER TABLE mon_hoc 
	ADD CONSTRAINT FK_giao_vien FOREIGN KEY (ma_giao_vien) REFERENCES giao_vien(ma_giao_vien);