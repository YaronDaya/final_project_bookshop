Drop schema if exists  `BookShop`;
CREATE schema `BookShop`;
USE `BookShop`;
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



DROP TABLE IF EXISTS `Books`;
CREATE TABLE `Books`(
`s_number` int(6) NOT NULL AUTO_INCREMENT,
`author` VARCHAR(30),
`title` VARCHAR(30),
`genre` VARCHAR(30),
`publishing` VARCHAR(30),
`release_date` DATE,
`Inventory` VARCHAR(30),
`price` int(6) NOT NULL,
PRIMARY KEY(s_number)
)ENGINE=InnoDB AUTO_INCREMENT=10;





INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (1,'Herman Melville','Moby-Dick','Romantic','Harpers Magazine','1850,-02-21','existing',45);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (2,'J.K.Rowling','Harry Potter','fantasy','Pearson','1997-06-26','Does not exist',100);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (3,'William Shakespeare','Romeo and Juliet','Romantic','Bertelsmann','1920-01-16','Invited',79);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (4,'Christina Baker Kline','Orphan Train','Romantic','Holtzbrinck','1929-03-20','Does not exist',77);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (5,'J.D.Salinger','The Catcher in the Rye','fear','Wiley','1945-02-11','existing',80);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`)VALUES (6,'Laurel Galloway','Jonas', 'Quyn', 'Chelsea','2018-07-16','Invited',100);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (7,'William Shakespeare','The Tragedy of Hamlet','tragedy','Bertelsmann','1922-03-11','existing',105);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (8,' michel wolf',' Fire and Fury','Bilgorafia','Henry Holt and ','2018-03-12','existing',200);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (9,'Jack London','White Fang','fantasy','Pearson','1906-02-01','Invited',96);
INSERT INTO Books (`s_number`,`author`,`title`,`genre`,`publishing`,`release_date`,`Inventory`,`price`) VALUES (10,'William  Golding','Lord of the Flies','novel','faber and faber','1954-09-17','Invited',130);



DROP TABLE IF EXISTS `Suppliers`;
CREATE TABLE `Suppliers`(
  `first_name` VARCHAR(30),
  `last_name` VARCHAR(30),
  `supplier_id` int(6) NOT NULL AUTO_INCREMENT,
  `s_number` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(supplier_id),
  FOREIGN KEY(s_number) REFERENCES Books(s_number) ON DELETE CASCADE ON UPDATE CASCADE
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

/*
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
*/
/*
DROP TABLE IF EXISTS `Invitations`;
CREATE TABLE `Invitations`(
  `s_number` int(6) NOT NULL,
  `supplier_id` int(6) NOT NULL,
  `price` float(6) NOT NULL,
  PRIMARY KEY(s_number) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb;

insert into Invitations (`s_number`, `supplier_id`, `price`) values (1, 1, 46);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (2, 2, 63);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (3, 3, 51);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (4, 4, 82);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (5, 5, 5);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (6, 6, 66);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (7, 7, 85);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (8, 8, 49);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (9, 9, 69);
insert into Invitations (`s_number`, `supplier_id`, `price`) values (10, 10, 38);
*/

DROP TABLE IF EXISTS `Purchases`;
CREATE TABLE `Purchases`(
`Customer_ID` int(6) NOT NULL,
`s_number` int (6) NOT NULL,
`Status` VARCHAR(30) NOT NULL,
`purchase_date` DATE,
PRIMARY KEY(Customer_ID ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(s_number) REFERENCES Books(s_number) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb;


insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (1, 1,'buy','1991-12-01');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) VALUES (2, 2,'commissioning','1990-02-01');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (3, 3,'Canceled','2017-03-01');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (4, 4,' Invited','2015-08-13');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (5, 5,'has come','1991-01-09');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (6, 6,'commissioning','1992-04-26');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (7, 7,'buy','1991-06-06');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`)values (8, 8,'Notification to customer','1991-06-09');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (9, 9,'commissioning','1991-10-12');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (10, 10,'buy','1993-03-01');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (11,3,'buy','1991-12-01');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) VALUES (12, 6,'buy','1990-02-01');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (13, 3,'Canceled','2017-03-01');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (14, 7,' Invited','2015-08-13');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (15, 2,'has come','1991-01-09');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (16, 6,'buy','1992-04-26');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (17, 8,'buy','1991-06-06');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`)values (18, 8,'Notification to customer','1991-06-09');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (19, 5,'commissioning','1991-10-12');
insert into Purchases (`Customer_ID`, `s_number`,`Status`,`purchase_date`) values (20, 10,'buy','1993-03-01');



DROP TABLE IF EXISTS `Discount`;
CREATE TABLE `Discount`(
  `local_discount` float(6),
  `global_discount` float(6),
  `Customer_ID` int(6) NOT NULL;
  `s_number` int (6) NOT NULL,
    PRIMARY KEY(s_number),
  FOREIGN KEY(ID) REFERENCES Customers(ID) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb;




insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (82, 20, 1,1);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (93, 20, 2,2);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (88, 20, 3,3);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (75, 20, 4,4);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (95, 0, 5,5);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (97, 0, 6,6);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (2, 20, 7,7);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`)values (62, 20, 8,8);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (62, 0, 9,9);
insert into Discount (`local_discount`, `global_discount`, `Customer_ID`,`s_number`) values (56, 0, 10,10);


  DROP TABLE IF EXISTS `Business_revenue` ;
  CREATE TABLE `Business_revenue`(
    `Revenue_Date` DATE NOT NULL,
    `Amount` INT(6) NOT NULL,
    `quarter` INT(6) NOT NULL,
    PRIMARY KEY(quarter),
    )ENGINE=innodb;

  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-01-01',45,1);
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-01-18',200,1);
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-01-02',100,1);
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-04-08',79,2;
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-05-09',77,2);
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-05-16',105,2);
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-07-25',80,3);
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-08-01',45,3);
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-09-12',80,3);
  INSERT INTO  Business revenue (`Revenue_Date`,`Amount`,`quarter`) VALUES ('2018-11-10',45,4);


DROP TABLE IF EXISTS `Order_To_Customer`;
CREATE TABLE `Order_To_Customer`(
    `Customer_ID`INT(6) NOT NULL,
    `s_number` INT(6) NOT NULL,
    /*`orderIdCustomer` int(6) NOT NULL AUTO_INCREMENT,*/
    `OrderNumber` INT(6) NOT NULL,
    `bookIsInStorage` ENUM ׂׂׂׂׂׂ('YES','NO'),--NOT NULL DEFAULT IS YES
    `DateOrder` DATE,
    `HowMuchItemsPerCustomer` INT(6),
    PRIMARY KEY(OrderNumber),
    FOREIGN KEY(s_number) REFERENCES Books(s_number) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(Customer_ID) REFERENCES Customers(Customer_ID) ON DELETE CASCADE ON UPDATE CASCADE
    )ENGINE=innodb;

INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (1,1,1,'YES','2017-02-02',17);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (2,2,2,'NO',NULL,0);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (3,3,3,'YES','2016-04-05',12);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (4,4,4,'NO',NULL,0);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (5,5,5,'YES','2017-06-02',8);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (6,6,6,'YES','2015-03-01',7);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (7,7,7,'NO',NULL,0);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (8,8,8,'YES','2013-01-09',16);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (9,9,9,'YES','2015-08-20',11);
INSERT INTO  Order_To_Customer  (`Customer_ID`,`s_number`,`OrderNumber`,`bookIsInStorage`,`DateOrder`,`HowMuchItemsPerCustomer`) VALUES (10,10,10,'YES','2017-11-20',5);



DROP TABLE IF EXISTS `Order_From_Suppliers`;
CREATE TABLE `Order_From_Suppliers`(
  `supplier_id` INT(6) NOT NULL,
    `s_number`  INT(6) NOT NULL,
    /*`orderIdSupplier` INT(6) NOT NULL AUTO_INCREMENT,*/
    `OrderSupplierNumber` INT(6) NOT NULL,
    `HowMuchItemsHasOrdered` INT(6) NOT NULL,
    `DateSupplierOrder` DATE,
    `Price` INT(6) NOT NULL,
    PRIMARY KEY(OrderSupplierNumber),
    FOREIGN KEY(s_number) REFERENCES Books(s_number) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id) ON DELETE CASCADE ON UPDATE CASCADE
    )ENGINE=innodb;

INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (1,1,1,12,'2017-02-02',15000);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (2,2,2,18,'2013-04-02',12000);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (3,3,3,0,NULL,0);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (4,4,4,5,'2013-04-02',1400);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (5,5,5,7,'2011-01-08',860);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (6,6,6,12,'2015-12-12',19000);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (7,7,7,0,NULL,0);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (8,8,8,0,NULL,0);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (9,9,9,8,'2014-06-21',1250);
INSERT INTO  Order_From_Suppliers (`supplier_id`,`s_number`,`OrderSupplierNumber`,`HowMuchItemsHasOrdered`,`DateSupplierOrder`,`Price`) VALUES (10,10,10,16,'2013-10-24',14550);



DROP TABLE IF EXISTS `Worker`;
CREATE TABLE `Worker`(
`firstName` VARCHAR(50),
`lastName` VARCHAR(50),
`WorkerNumber` INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`s_number` INT (6) NOT NULL,
`Sales` INT ׂׂׂ(6) NOT NULL,
`selling_date` DATE,
PRIMARY KEY(WorkNumber),
FOREIGN KEY(s_number) REFERENCES Books(s_number) ON DELETE CASCADE ON UPDATE CASCADE
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
  `s_number` INT(6) NOT NULL,
  `Customer_ID` INT (6) NOT NULL,
  `Amount` INT(6) NOT NULL,
  `IsExistsInStorge` ENUMׂׂׂׂׂׂ ('YES','NO')
  FOREIGN KEY(s_number) REFERENCES Books(s_number) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=innodb AUTO_INCREMENT=10;

  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge`) values (1,1, 10,'YES');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge`) values (2,2, 12,'YES');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge`) values (3,3, 56,'YES');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge`) values (4,4, 25,'YES');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge` )values (5,5, 0,'NO');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge` )values (6,6, 0,'NO');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge`) values (7,10, 550,'YES');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge`)values (8,8, 123,'YES');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge`) values (9,7, 340,'YES');
  insert into Storge (`s_number`, `Customer_ID`,`Amount`,`IsExistsInStorge`) values (10,9 20,'YES');
