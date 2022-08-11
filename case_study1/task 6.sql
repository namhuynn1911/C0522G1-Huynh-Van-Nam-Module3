use furama_da_nang;

select dich_vu.ma_dich_vu, dich_vu.ten_dich_vu, dich_vu.dien_tich, dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu
from dich_vu
 join hop_dong on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
 join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
where dich_vu.ma_dich_vu not in(select ma_dich_vu from hop_dong where year(hop_dong.ngay_lam_hop_dong)=2021 and  (month(hop_dong.ngay_lam_hop_dong)in (1,2,3)))
group by dich_vu.ma_dich_vu;


