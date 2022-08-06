USE  furama_resort;

select * from khach_hang;

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
DROP PROCEDURE IF EXISTS delete_customer $$
CREATE PROCEDURE delete_customer
	(in ma_khach_hang_xoa int)
BEGIN
   delete from khach_hang where ma_khach_hang = ma_khach_hang_xoa;
END $$
DELIMITER ;

call delete_customer (1);



