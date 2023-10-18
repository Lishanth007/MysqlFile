USE collage;
select * from NN;
select * from student;
## SQL constraints -NOT NULL, UNIQUE, PRimary, Foreign, Check, default

# NOT NULL
create table NN (ID int not null, Fname varchar(10) not null);
insert into NN value(3,'lishanth','Sri',20),(4,'Sarah','Princes',20);
UPDATE NN SET Lname = 'Dora' WHERE ID = 2 LIMIT 1;

-- Adding new column in table with not null
alter table NN add age int not null;
-- adding not null in exitting column in table
alter table NN modify column Lname varchar(10) not null;

# UNIQUE
select * from UniqueTable;

CREATE TABLE UniqueTable(
    Id_no INT UNIQUE,
    IDName VARCHAR(30),
    Location TEXT
);

Insert into UniqueTable values(1,'Lishant','chennai'),(2,'Sarah','Chennai');

delete from UniqueTable limit 1;

-- To give unique ALTER TABLE AADHAREnroll add UNIQUE (PersonName);
alter table UniqueTable add unique (IDName);
# To apply UNIQUE constraints for two columns
ALTER TABLE UniqueTable ADD constraint Uni_for2 unique(Id_no,IDName);
# Take UNIQUE constraints for two columns.
ALTER TABLE UniqueTable DROP Constraint Uni_for2;

#Primary key
CREATE TABLE Pk (
    ID INT PRIMARY KEY,
    IDName TEXT,
    Location VARCHAR(30)
);

# Add Primary key for 2 to column in a table 
-- IS also called conposite key
CREATE TABLE Pkfro2 (
    ID INT,
    IDName VARCHAR(30),
    Location VARCHAR(30), 
    constraint pk_for2_col PRIMARY KEY(ID,IDName)
);
alter table Pkfro2 add  constraint nothing primary key (IDName, Location);

Insert into Pkfro2 values(1,'lish','chennais');

CREATE TABLE NewSales(SalesID int, Item varchar(10),Price int);

Insert into NewSales values(111,null,1000);
UPDATE NewSales SET Item = 'Dora' WHERE SalesID = 111 limit 1;

# give primary key useing alter
alter table NewSales add primary key (SalesID, Item);

#TO set primary key for a single column
ALTER TABLE NewSales ADD PRIMARY KEY(price);

#To delete a Primary Key with multiple columns
ALTER TABLE NEWsales DROP PRIMARY KEY;
