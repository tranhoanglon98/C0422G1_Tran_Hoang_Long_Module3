USE  furama_resort;

select * from dich_vu;

DELIMITER $$
DROP PROCEDURE IF EXISTS add_new_customer $$
CREATE PROCEDURE add_new_customer
	(in ho_ten_moi varchar(45),ngay_sinh_moi date, gioi_tinh_moi bit(1),so_cmnd_moi varchar(45), so_dien_thoai_moi VARCHAR(45),
    email_moi VARCHAR(45),dia_chi_moi VARCHAR(45),ma_loai_khach_moi INT)
BEGIN
   INSERT INTO khach_hang (ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi, ma_loai_khach) 
		value(ho_ten_moi,ngay_sinh_moi,gioi_tinh_moi,so_cmnd_moi,so_dien_thoai_moi,email_moi,dia_chi_moi,ma_loai_khach_moi);
END $$
DELIMITER ;


DELIMITER $$
DROP PROCEDURE IF EXISTS update_customer $$
CREATE PROCEDURE update_customer
	(in ho_ten_moi varchar(45),
    ngay_sinh_moi date, 
    gioi_tinh_moi bit(1),
    so_cmnd_moi varchar(45), 
    so_dien_thoai_moi VARCHAR(45),
    email_moi VARCHAR(45),
    dia_chi_moi VARCHAR(45),
    ma_loai_khach_moi INT,
    ma_khach_hang_cu int)
BEGIN
   update  khach_hang 
   set ho_ten = ho_ten_moi, 
   ngay_sinh = ngay_sinh_moi, 
   gioi_tinh = gioi_tinh_moi,
   so_cmnd = so_cmnd_moi, 
   so_dien_thoai = so_dien_thoai_moi, 
   email = email_moi, 
   dia_chi = dia_chi_moi, 
   ma_loai_khach =ma_loai_khach_moi
   where ma_khach_hang = ma_khach_hang_cu;
END $$
DELIMITER ;


DELIMITER $$
DROP PROCEDURE IF EXISTS update_facility $$
CREATE PROCEDURE update_facility
	(in `name` varchar(55), dien_tich_moi int, gia double, nguoi int, phong varchar(55), tien_nghi varchar(55), ho_boi double,tang int, mien_phi varchar(100), kieu_thue int, loai_dich_vu int,id int)
BEGIN
   update dich_vu set ten_dich_vu= `name`, dien_tich = dien_tich_moi, chi_phi_thue = gia,so_nguoi_toi_da= nguoi,
   tieu_chuan_phong = phong,mo_ta_tien_nghi_khac = tien_nghi,dien_tich_ho_boi=ho_boi,so_tang=tang,
   dich_vu_mien_phi_di_kem=mien_phi,ma_kieu_thue = kieu_thue,ma_loai_dich_vu = loai_dich_vu where ma_dich_vu = id;
END $$
DELIMITER ;

call add_facility(?,?,?,?,?,?,?,?,?,?,?,?);














