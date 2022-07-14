create table hoc_sinh(
	ma_hoc_sinh varchar(20) primary key,
    ten_hoc_sinh varchar(45) not null,
	ngay_sinh datetime not null,
    lop varchar(20) not null,
    gt varchar(20) not null
);

CREATE TABLE mon_hoc(
    ma_mon_hoc VARCHAR(20) PRIMARY KEY,
    ten_mon_hoc VARCHAR(50) not null
);

CREATE TABLE bang_diem(
    ma_hoc_sinh VARCHAR(20) not null unique,
    ma_mon_hoc VARCHAR(20) not null,
    diem_thi INT not null,
    ngay_kiem_traT DATETIME not null,
    PRIMARY KEY (ma_hoc_sinh, ma_mon_hoc),
    FOREIGN KEY (ma_hoc_sinh) REFERENCES hoc_sinh(ma_hoc_sinh),
    FOREIGN KEY (ma_mon_hoc) REFERENCES mon_hoc(ma_mon_hoc)
);

CREATE TABLE giao_vien(
    ma_giao_vien VARCHAR(20) PRIMARY KEY,
    ten_giao_vien VARCHAR(20) not null,
    so_dien_thoai VARCHAR(10) not null unique
);

ALTER TABLE mon_hoc ADD ma_giao_vien VARCHAR(20);
ALTER TABLE mon_hoc ADD CONSTRAINT FK_giao_vien FOREIGN KEY (ma_giao_vien) REFERENCES giao_vien(ma_giao_vien);