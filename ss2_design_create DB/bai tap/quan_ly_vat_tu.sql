create database quan_ly_vat_tu;
use quan_ly_vat_tu;

create table nha_cc(
ma_ncc int primary key,
ten_ncc varchar(50),
dia_chi varchar(50),
sdt varchar(20)
);

create table vat_tu(
ma_vat_tu int primary key,
ten_vat_tu varchar(50)
);

create table don_dh(
so_dh int primary key,
ngay_dh datetime
);


create table phieu_xuat(
so_px int primary key,
ngay_xuat datetime
);

create table phieu_xuat_vat_tu(
so_px int,
ma_vat_tu int,
don_gia_xuat int,
so_luong_xuat int,
primary key(so_px,ma_vat_tu),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key(so_px) references phieu_xuat(so_px)
);

create table vat_tu_don_dh(
ma_vat_tu int,
so_dh int,
primary key(ma_vat_tu,so_dh),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key(so_dh) references don_dh(so_dh)
);

create table phieu_nhap(
so_pn int primary key,
ngay_nhap datetime
);

create table vat_tu_phieu_nhap(
so_pn int,
ma_vat_tu int,
don_gia_nhap int,
so_luong_nhap int,
primary key(so_pn,ma_vat_tu),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key(so_pn) references phieu_nhap(so_pn)
);


