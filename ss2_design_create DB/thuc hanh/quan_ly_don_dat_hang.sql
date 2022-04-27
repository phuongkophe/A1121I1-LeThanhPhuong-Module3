use quan_ly_don_dat_hang;

create table dv_khach_hang(
ma_dv int auto_increment primary key,
ten_don_vi varchar(50),
dia_chi varchar(50),
dien_thoai int
);

create table nguoi_dat(
ma_so_nd int auto_increment primary key,
ho_ten_nd varchar(50)
);

create table hang(
ma_hang int 
);
