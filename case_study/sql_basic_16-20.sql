USE furama_resort;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
SET sql_safe_updates = 0;
DELETE FROM nhan_vien 
WHERE
    ma_nhan_vien NOT IN (SELECT 
        ma_nhan_vien
    FROM
        hop_dong
    
    WHERE
        YEAR(ngay_lam_hop_dong) BETWEEN 2019 AND 2021); 
SET sql_safe_updates = 1;


-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond,
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ. 




