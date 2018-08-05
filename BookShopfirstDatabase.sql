Drop schema if exists  `BookDB`;
CREATE schema `BookDB`;
USE `BookDB`;
SET AUTOCOMMIT=0;



DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers`(
`Customer_ID` int(6) NOT NULL AUTO_INCREMENT,
`first_Name` VARCHAR(30),
`last_Name` VARCHAR(30),
`Join_Date` DATE,
PRIMARY KEY(`Customer_ID`)
)ENGINE=InnoDB AUTO_INCREMENT=16;

INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (1,'Yoni','Yoni','1991-12-01');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (2,'Rafi','Rafi','1991-01-04');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (3,'Avi','Avi','1992-06-22');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (4,'David','David','1991-04-13');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (5,'Yaron','Yaron','1990-07-24');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (6,'Adi','Adi','1991-04-06');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (7,'Amit','Amit','1994-06-16');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (8,'Roni','Roni','1989-04-24');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (9,'Haim','Haim','1992-03-23');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (10,'Tal','Tal','1991-01-08');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (11,'Shay','Shay','1993-03-01');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (12,'Yarden','Yarden','1989-04-16');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (13,'Fabi','Fabi','2003-08-13');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (14,'Daniel','Daniel','1996-04-05');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (15,'Yossi','Yossi','1991-03-16');
INSERT INTO Customers (`Customer_ID`,`first_Name`,`last_Name`,`Join_Date`) VALUES (16,'Ben','Bibendum','1995-04-05');



DROP TABLE IF EXISTS `Book`;
CREATE TABLE `Book`(
`s_number` int(6) NOT NULL AUTO_INCREMENT,
`author` VARCHAR(30),
`title` VARCHAR(30),
`genre` VARCHAR(30),
`publishing` VARCHAR(30),
`release_date` DATE,
`Inventory` VARCHAR(30),
PRIMARY KEY(title)
)ENGINE=InnoDB AUTO_INCREMENT=10;





INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (1,'Herman Melville','Moby-Dick','Romantic','Harpers Magazine','1850,-02-21','existing');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (2,'J.K.Rowling','Harry Potter','fantasy','Pearson','1997-06-26','Does not exist');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (3,'William Shakespeare','Romeo and Juliet','Romantic','Bertelsmann','1920-01-16','Invited');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (4,'Christina Baker Kline','Orphan Train','Romantic','Holtzbrinck','1929-03-20','Does not exist');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (5,'J.D.Salinger','The Catcher in the Rye','fear','Wiley','1945-02-11','existing');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`)VALUES (6,'Laurel Galloway','Jonas', 'Quyn', 'Chelsea','2018-07-16','Invited');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (7,'William Shakespeare','The Tragedy of Hamlet','tragedy','Bertelsmann','1922-03-11','existing');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (8,' michel wolf',' Fire and Fury','Bilgorafia','Henry Holt and ','2018-03-12','existing');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (9,'Jack London','White Fang','fantasy','Pearson','1906-02-01','Invited');
INSERT INTO Book (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`) VALUES (10,'William  Golding','Lord of the Flies','novel','faber and faber','1954-09-17','Invited');



DROP TABLE IF EXISTS `Suppliers`;
CREATE TABLE `Suppliers`(
  `first_name` VARCHAR(30),
  `last_name` VARCHAR(30),
  `supplier_id` int(6) NOT NULL AUTO_INCREMENT,
  `s_number` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(supplier_id),
  FOREIGN KEY(title) REFERENCES Book(title) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=11;



INSERT INTO Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) VALUES (1,'Herman ','Melville',1);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (2, 'Aili', 'Boydle',4);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (3, 'Guy', 'Russ',1);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (4, 'Eudora', 'Barth',5);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (5, 'Skye', 'Jebb',6);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (6, 'Sharlene', 'Hallbird',2);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (7, 'Juli', 'Willmore',3);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (8, 'Morgan', 'Halfpenny',7);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (9, 'Stavros', 'Trussman',8);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (10, 'Sadye', 'Dowtry',9);
insert into Suppliers (`supplier_id`,`first_name`,`last_name`,`s_number`) values (11, 'cr', 'cr',10);

DROP TABLE IF EXISTS `Address`;
CREATE TABLE `Address`(
`city` VARCHAR(30),
`street` VARCHAR(30),
`house_number`VARCHAR(30),
`ID` int(6) NOT NULL,
FOREIGN KEY(ID) REFERENCES Customers(ID) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb;

insert into Address (`city`, `street`, `house_number`, `ID`) values ('Stebnyk', 'Vidon', '4458', 1);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Danyang', 'Goodland', '08325', 2);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Olímpia', 'Hayes', '55', 3);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Posadas', 'Granby', '889', 4);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Moravský Beroun', 'Mitchell', '6882', 5);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Finspång', 'Marcy', '315', 6);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Obsharovka', 'Upham', '81344', 7);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Málaga', 'Scott', '2', 8);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Loukhi', 'Utah', '81', 9);
insert into Address (`city`, `street`, `house_number`, `ID`) values ('Baoshui', 'Eagan', '68724', 10);

DROP TABLE IF EXISTS `Invitations`;
CREATE TABLE `Invitations`(
  `title` VARCHAR(30) NOT NULL,
  `supplier_id` int(6) NOT NULL,
  `price` float(6) NOT NULL,
  PRIMARY KEY(title) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb;

insert into Invitations (`title`, `supplier_id`, `price`) values ('Moby-Dick', 1, 46);
insert into Invitations (`title`, `supplier_id`, `price`) values ('Harry Potter', 2, 63);
insert into Invitations (`title`, `supplier_id`, `price`) values (3, 3, 51);
insert into Invitations (`title`, `supplier_id`, `price`) values (4, 4, 82);
insert into Invitations (`title`, `supplier_id`, `price`) values (5, 5, 5);
insert into Invitations (`title`, `supplier_id`, `price`) values (6, 6, 66);
insert into Invitations (`title`, `supplier_id`, `price`) values (7, 7, 85);
insert into Invitations (`title`, `supplier_id`, `price`) values (8, 8, 49);
insert into Invitations (`title`, `supplier_id`, `price`) values (9, 9, 69);
insert into Invitations (`title`, `supplier_id`, `price`) values (10, 10, 38);


DROP TABLE IF EXISTS `Purchases`;
CREATE TABLE `Purchases`(
`ID` int(6) NOT NULL,
`s_number` int (6) NOT NULL,
`transactions` VARCHAR(30) NOT NULL,
`purchase_date` DATE,
PRIMARY KEY(ID) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(s_number) REFERENCES Book(s_number) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb;


insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) values (1, 1,'buy','1991-12-01');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) VALUES (2, 2,'commissioning','1990-02-01');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) values (3, 3,'Canceled','2017-03-01');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) values (4, 4,' Invited','2015-08-13');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) values (5, 5,'has come','1991-01-09');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) values (6, 6,'commissioning','1992-04-26');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) values (7, 7,'buy','1991-06-06');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`)values (8, 8,'Notification to customer','1991-06-09');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) values (9, 9,'commissioning','1991-10-12');
insert into Purchases (`ID`, `s_number`,`transactions`,`purchase_date`) values (10, 10,'buy','1993-03-01');



DROP TABLE IF EXISTS `Discount`;
CREATE TABLE `Discount`(
  `local_discount` float(6),
  `global_discount` float(6),
  `ID` int(6) NOT NULL
  `s_number` int (6) NOT NULL,,
  FOREIGN KEY(ID,s_number) REFERENCES Customers(ID),Book(s_number) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb;




insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (82, 20, 1,1);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (93, 20, 2,2);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (88, 20, 3,3);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (75, 20, 4,4);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (95, 0, 5,5);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (97, 0, 6,6);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (2, 20, 7,7);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`)values (62, 20, 8,8);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (62, 50, 9,9);
insert into Discount (`local_discount`, `global_discount`, `ID`,`s_number`) values (56, 60, 10,10);


DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account`(
  `balance` int(7) NOT NULL,
  `ID` int(6) NOT NULL,
  `s_number` INT(6) NOT NULL,
  `Revenue` INT(6) NOT NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY(s_number) REFERENCES Book(s_number) ON DELETE CASCADE ON UPDATE CASCADE
    )ENGINE=innodb;




    INSERT INTO  Account (`balance`,`ID`,`s_number`,`Revenue`) VALUES (123456,1,1,1200000);


DROP TABLE IF EXISTS `Order_To_Customer`;
CREATE TABLE `Order_To_Customer`(
    `ID`int(6) NOT NULL,
    `s_number` int(6) NOT NULL,
    `orderIdCustomer` int(6) NOT NULL AUTO_INCREMENT,
    `OrderNumber` int(6) NOT NULL
    `HadOrdered` ENUMׂׂׂׂׂׂ('YES','NO'),--NOT NULL DEFAULT IS YES
    `DateOrder` DATE,
    `HowMuchBuy` int(6),
    PRIMARY KEY(orderIdCustomer) ,
    FOREIGN KEY(s_number) REFERENCES Book(s_number) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(ID) REFERENCES Customers(ID) ON DELETE CASCADE ON UPDATE CASCADE
    )ENGINE=innodb;

INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (1,1,1,1,'YES','2017-02-02',17);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (2,2,2,2,'NO',NULL,0);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (3,3,3,3,'YES','2016-04-05',12);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (4,4,4,4,'NO',NULL,0);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (5,5,5,5,'YES','2017-06-02',8);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (6,6,6,6,'YES','2015-03-01',7);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`)VALUES (7,7,7,7,'NO',NULL,0);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (8,8,8,8,'YES','2013-01-09',16);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (9,9,9,9,'YES','2015-08-20',11);
INSERT INTO  Order_To_Customer (`ID`,`s_number`,`orderIdCustomer`,`OrderNumber`,`HadOrdered`,`DateOrder`,`HowMuchBuy`) VALUES (10,10,10,10,'YES','2017-11-20',5);



DROP TABLE IF EXISTS `Order_To_Suppliers`;
CREATE TABLE `Order_To_Suppliers`(
  `supplier_id` int(6) NOT NULL,
    `s_number` int(6) NOT NULL,
    `orderIdSupplier` int(6) NOT NULL AUTO_INCREMENT,
    `OrderSupplierNumber` int(6) NOT NULL
    `HowMuchSupplierInvites` int(6) NOT NULL
    `DateSupplierOrder` DATE,
    PRIMARY KEY(orderIdSupplier) ,
    FOREIGN KEY(s_number) REFERENCES Book(s_number) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id) ON DELETE CASCADE ON UPDATE CASCADE
    )ENGINE=innodb;

INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (1,1,1,1,'YES','2017-02-02');
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (2,2,2,2,18,'2013-04-02');
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (3,3,3,3,0,NULL);
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (4,4,4,4,5,'2013-04-02');
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (5,5,5,5,7,'2011-01-08');
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (6,6,6,6,12,'2015-12-12');
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (7,7,7,7,0,NULL);
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (8,8,8,8,0,NULL);
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (9,9,9,9,8,'2014-06-21');
INSERT INTO  Order_To_Suppliers (`supplier_id`,`s_number`,`orderIdSupplier`,`OrderSupplierNumber`,`HowMuchSupplierInvites`,`DateSupplierOrder`) VALUES (10,10,10,10,16,'2013-10-24');



DROP TABLE IF EXISTS `Worker`;
CREATE TABLE `Worker`(
`firstName` VARCHAR(50),
`lastName` VARCHAR(50),
`WorkNumber` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`s_number` int(6) NOT NULL,
`Sales` INT ׂׂׂ(6) NOT NULL,
`selling_date` DATE,
PRIMARY KEY(WorkNumber),
FOREIGN KEY(s_number) REFERENCES Book (s_number) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb;



insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`) values ('Edvard', 'Lambkin', 1, 1,200,'2017-02-01');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`)  values ('Tessa', 'Rackley', 2, 2,350,'2014-05-03');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`) values ('Mara', 'Tumayan', 3, 3,12,'2014-09-06');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`)  values ('Morganica', 'Rossetti', 4, 4,456,'2017-03-06');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`)  values ('Trey', 'Andrus', 5, 5,670,'2013-04-24');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`)  values ('Bianca', 'Janman', 6, 6,904,'2014-03-19');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`)  values ('Basilio', 'Easthope', 7, 7,1203,'2013-08-13');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`)  values ('Theodora', 'Stovine', 8, 8,12223,'1991-01-09');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`)  values ('Darla', 'Sprakes', 9, 9,45,'1993-03-01');
insert into Worker (`firstName`, `LastName`, `WorkNumber`, `s_number`,`Sales`,`selling_date`)  values ('Devonne', 'Stollhofer', 10, 10,76,'2005-01-04');


DROP TABLE IF EXISTS `Storge`;
CREATE TABLE `Storge`(
  `s_number` int(6) NOT NULL,
  `Amount` int(6) NOT NULL,
  FOREIGN KEY(s_number) REFERENCES Book (s_number) ON DELETE CASCADE ON UPDATE CASCADE
  )ENGINE=innodb;

  insert into Storge (`s_number`, `Amount`) values (1, 10);
  insert into Storge (`s_number`, `Amount`) values (2, 120);
  insert into Storge (`s_number`, `Amount`) values (3, 5670);
  insert into Storge (`s_number`, `Amount`) values (4, 25);
  insert into Storge (`s_number`, `Amount`) values (5, 543);
  insert into Storge (`s_number`, `Amount`) values (6, 760;
  insert into Storge (`s_number`, `Amount`) values (7, 550);
  insert into Storge (`s_number`, `Amount`) values (8, 1230);
  insert into Storge (`s_number`, `Amount`) values (9, 340);
  insert into Storge (`s_number`, `Amount`) values (10, 20);
