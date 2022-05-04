CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;

CREATE TABLE Customer(
cID INT PRIMARY KEY,
cName VARCHAR(50),
cAge INT
);

CREATE TABLE `Order`(
oID INT PRIMARY KEY,
cID INT,
oDate DATETIME,
oTotalPrice INT,
FOREIGN KEY(cID) REFERENCES Customer(cID)
);

CREATE TABLE Product(
pID INT PRIMARY KEY,
pName VARCHAR(50),
pPrice INT
);

CREATE TABLE OderDetail (
    oID INT,
    pID INT,
    odQTY INT,
    PRIMARY KEY (oID , pID),
    FOREIGN KEY (oID)
        REFERENCES `Order` (oID),
    FOREIGN KEY (pID)
        REFERENCES Product (pID)
);

insert into customer(cID, cName, cAge)
values
(1,'Minh Quan',10),
(2,"Ngoc Oanh", 20),
(3,"Hong Ha", 50);

insert into `order`(oID, cID, oDate, oTotalPrice)
values
(1,1,'2006/3/21',Null),
(2,2,'2006/3/23',Null),
(3,1,'2006/3/16',Null);

insert into product(pID, pName, pPrice)
values
(1,"May Giat", 3),
(2,"Tu Lanh", 5),
(3,"Dieu Hoa", 7),
(4,"Quat", 1),
(5,"Bep Dien",2);

insert into oderdetail(oID, pID, odQTY)
values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oID, oDate, oTotalPrice from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select cName, pName from customer
inner join `order` on customer.cID = `order`.cID 
inner join oderdetail on `order`.oID = oderdetail.oID
inner join product on oderdetail.pID = product.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select cName from customer
left join `order` on customer.cID = `order`.cID
where `order`.cID is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select `order`.oID,oDate,sum(odQTY*pPrice) as total_price
from `order`
inner join oderdetail on `order`.oID = oderdetail.oID
inner join product on oderdetail.pID = product.pID
group by oID