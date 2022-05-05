create database demo;

create table products(
id int primary key,
productCode varchar(45),
productName varchar(45),
productPrice double,
productAmount int,
productDescription varchar(45),
productStatus varchar(45)

);

insert into products
values(1,123,'Máy tính','10000000','5','Máy tính Asus','Có hàng'),
(2,234,'Điên thoại','5000000','3','Điện thoại Samsung','Có hàng'),
(3,345,'Bàn phím','500000','10','Bàn phím Toshiba','Có hàng');

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index index_product_code
on products(productCode);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index index_product_name_price
on products(productName,productPrice);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * from products;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view products_view
as
select productCode,productName,productPrice,productStatus
from products;

select * from products_view;

-- Tiến hành sửa đổi view
alter view products_view as
select productCode,productName
from products;
select * from products_view;

-- Tiến hành xoá view
drop view products_view;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //;
create procedure products_info()
begin
select * from products;
end;
// delimiter;
call products_info();

-- Tạo store procedure thêm một sản phẩm mới
delimiter //;
create procedure add_product(id int, productCode varchar(45),productName varchar(45),productPrice double,productAmount int,productDescription varchar(45),productStatus varchar(45))
begin 
insert into products(id,productCode,productName,productPrice,productAmount,productDescription,productStatus)
values(id,productCode,productName,productPrice,productAmount,productDescription,productStatus);
end;
// delimiter;
call add_product(4,456,'Chai nước','50000',3,'Có nước','hết hàng');

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //;
create procedure edit_by_id(edit_id int, edit_productCode varchar(45),edit_productName varchar(45),edit_productPrice double,edit_productAmount int,edit_productDescription varchar(45),edit_productStatus varchar(45))
begin
update products set
productCode = edit_productCode,
productName = edit_productName,
productPrice = edit_productPrice,
productAmount = edit_productAmount,
productDescription = edit_productDescription,
productStatus = edit_productStatus
where id = edit_id;
end;
// delimiter;
call edit_by_id(1,987,'Bàn là','230000',4,'Xịn','có hàng');

-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure delete_by_id(deleta_id int)
begin
delete from products where id = delete_id;
end;
delimiter;

call delete_by_id(2);
