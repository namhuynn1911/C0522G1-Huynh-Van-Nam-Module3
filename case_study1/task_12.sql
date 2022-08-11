use furama_da_nang;


-- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng),
 -- ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem),
 -- tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
SELECT 
    hd.ma_hop_dong,
    nv.ho_ten,
    kh.ho_ten,
    kh.so_dien_thoai,
    dv.ten_dich_vu,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem,
    hd.tien_dat_coc
FROM hop_dong hd
        JOIN nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
        JOIN khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
      left  JOIN hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
    
WHERE (MONTH(hd.ngay_lam_hop_dong) IN (10 , 11, 12) AND YEAR(hd.ngay_lam_hop_dong) = 2020)
        AND hd.ma_hop_dong NOT IN (SELECT hd.ma_hop_dong FROM hop_dong WHERE (MONTH(hd.ngay_lam_hop_dong) BETWEEN 1 AND 6 AND YEAR(hd.ngay_lam_hop_dong) = 2021))
GROUP BY hd.ma_hop_dong;




