create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table Customer(
cID int primary key,
cName varchar(50),
cAge int
);

create table `Order`(
oID int primary key,
cID int,
oDate datetime,
oTotalPrice int,
foreign key(cID) references Customer(cID)
);

create table Product(
pID int primary key,
pName varchar(50),
pPrice int
);

create table OderDetail(
oID int,
pID int,
odQTY int,
primary key(oID,pID),
foreign key(oID) references `Order`(oID),
foreign key(pID) references Product(pID)
);
