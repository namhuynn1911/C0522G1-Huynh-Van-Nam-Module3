drop database if exists erd_table;
create database erd_table;

use erd_table;

create table phieu_xuat(
SoPX int primary key,
NgayXuat date);

create table vat_tu(
MaVTU int primary key,
TenVTU varchar(45));

create table chi_tiet_xuat_phieu(
SoPX int,
MaVTU int,
DGXuat double,
SLXuat int,
primary key(SoPX,MaVTU),
foreign key(SoPX) references phieu_xuat(SoPX),
foreign key(MaVTU) references vat_tu(MaVTU)
);
create table phieu_nhap(
SoPN int primary key,
NgayNhap date);

create table chi_tiet_phieu_nhap(
SoPN int,
MaVTU int,
DGNhap double,
SLNhap int,
primary key(SoPN,MaVTU),
foreign key(SoPN)references phieu_nhap(SoPN),
foreign key(MaVTU)references vat_tu(MaVTU)
);
create table NHACC(
MaNCC int primary key,
TenNCC varchar(45),
DiaChi varchar(45)
);
create table SDT_NHACC(
SDT varchar(20),
MaNCC int,
foreign key(MaNCC)references NHACC(MaNCC)
);
create table DONDN(
SoDH int auto_increment primary key,
NgayDH date,
MaNCC int,
foreign key(MaNCC) references NHACC(MaNCC)
);

 create table chi_tiet_don_dat_hang(
 SoDH int,
MaVTU int,
primary key(SoDH,MaVTU),
foreign key(SoDH)references DONDN(SoDH),
foreign key(MaVTU)references vat_tu(MaVTU)
);