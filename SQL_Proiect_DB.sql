--- IT Factory Project

--- Instructiuni DDL (Data Definition Language): Create, Drop, Update, Alter, Delete.

--- Create and delete database

Create database Showrooom
Drop database Showroom

--- Create tables and provide the name along with its column names, column definition and constraints.

Create table Clients
Drop table Clients

Create table Clients
(
Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
FirstName VARCHAR (50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
City VARCHAR (25) NOT NULL,
Adress VARCHAR (50) NOT NULL
);

ALTER TABLE Clients
ADD COLUMN Email VARCHAR (75) NOT NULL

CREATE TABLE Cars 
(
  Id INT AUTO_INCREMENT NOT NULL,
  Model VARCHAR (50) NOT NULL,
  Cm3 INT,
  Year INT,
  Price DECIMAL (10, 2) NOT NULL,
);

ALTER TABLE Cars RENAME COLUMN Price TO Price_Euro;

ALTER TABLE Cars ADD CONSTRAINT Id_Client_Car FOREIGN KEY Cars REFERENCES ID;

CREATE TABLE Clients_personal_information (
  id INT PRIMARY KEY NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  CNP VARCHAR (13) NOT NULL, 
  date_of_birth DATE NOT NULL,
  age INT NOT NULL,
  salary DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Orders (
  OrderId INT PRIMARY KEY NOT NULL,
  FirstName VARCHAR (50) NOT NULL,
  LastName VARCHAR (50) NOT NULL,
  OrderDate DATE NOT NULL,
  OrderProduct VARCHAR (50) NOT NULL
);

--- We populate all four tables created earlier and add data into the columns.

--- Instructiuni DML (Data Manipulation Language): Delete, Select, Insert.

--- Insert ten rows on table Clients

INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Elena', 'Bujor', 'Iasi', 'Orientului nr.1', 'elena_bujor@gmail.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Andrei', 'Preutescu', 'Iasi', 'Piata Unirii nr.12', 'andrei_preutescu@yahoo.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Maria', 'Popescu', 'Suceava', 'Bujorilor nr.13', 'maria.popescu2@yahoo.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Andreea', 'Ionescu', 'Suceava', 'Alexandru cel Bun nr.600', 'ionescu.a.11@yahoo.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Bianca', 'Rusu', 'Cluj', 'Nicolina nr.111', 'biancarusu@yahoo.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Iulian', 'Marin', 'Oradea', 'Mircesti nr. 900', 'iulian.marin11@gmail.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Daniela', 'Ungureanu', 'Tg. Neamt', 'Piata Unirii nr.1', 'daniela.ungureanu@yahoo.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Marius', 'Bulgaru', 'Ialomita', 'Calea Chisinaului', 'marius.bulgaru.2@yahoo.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Alexandra', 'Onea', 'Bucuresti', 'Piata Constitutiei', 'onea-alexandra@yahoo.com');
INSERT INTO Clients (FirstName, LastName, City, Adress, Email) VALUES ('Nicolae', 'Maftei', 'Iasi', 'Zorilor', 'maftei-nicolae-2@yahoo.com');

SELECT * FROM Clients

--- Insert 10 rows on table Cars

INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('Ford Mondeo', '1900', '2013', '10000');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('Ford Mondeo', '1800', '2023', '50000');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('Dacia Duster', '1000', '2009', '7000');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('Toyota Yaris', '2000', '2003', '6000');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('Volkswagen Passat', '1600', '2020', '9500');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('Audi A3', '1700', '2013', '9000');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('Audi A6', '1700', '2013', '10000');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('BMW Seria 3', '1600', '2003', '5000');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('BMW Seria 7', '1900', '2023', '20000');
INSERT INTO Cars (Model, Cm3, Year, Price_Euro) VALUES ('Hyundai Elantra', '1800', '2023', '11000');

ALTER TABLE Cars ADD COLUMN OrderProduct VARCHAR (50) NOT NULL;

INSERT INTO Cars (OrderProduct) VALUES ('934360');

SELECT * FROM Cars

--- Insert 10 rows on table Clients_personal_information

INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('1', 'Elena', 'Bujor', '2950608229372', '1995-06-08', '28', '6000');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('2', 'Andrei', 'Preutescu', '1900202225398', '1990-02-02', '33', '16000');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('3', 'Maria', 'Popescu', '2850608229372', '1985-06-08', '38', '7600');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('4', 'Andreea', 'Ionescu', '2930508229222', '1993-05-08', '30', '2300');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('5', 'Bianca', 'Rusu', '2910606229372', '1991-06-06', '32', '10000');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('6', 'Iulian', 'Marin', '1750608225572', '1975-06-08', '48', '9200');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('7', 'Daniela', 'Ungureanu', '2750101229372', '1975-01-01', '48', '4400');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('8', 'Marius', 'Bulgaru', '1950608229372', '1995-06-08', '28', '6000');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('9', 'Alexandra', 'Onea', '2950910229372', '1995-09-10', '28', '9000');
INSERT INTO Clients_personal_information (Id, FirstName, LastName, CNP, Date_of_Birth, Age, Salary) VALUES ('10', 'Nicolae', 'Maftei', '1950608225372', '1995-06-08', '28', '3000');

SELECT * FROM Clients_personal_information

--- Insert 10 rows on table Orders

INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('1','Elena', 'Bujor', '2019-06-08', '934360');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('2', 'Andrei', 'Preutescu', '2023-05-08', '933360');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('3', 'Maria', 'Popescu', '2023-03-03', '934350');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('4', 'Andreea', 'Ionescu', '2022-12-11', '434660');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('5', 'Bianca', 'Rusu', '2020-05-08', '933460');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('6', 'Iulian', 'Marin', '2013-03-02', '234260');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('7', 'Daniela', 'Ungureanu', '2021-03-03', '943330');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('8', 'Marius', 'Bulgaru', '2022-11-11', '941111');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('9', 'Alexandra', 'Onea', '2011-01-01', '943811');
INSERT INTO Orders (OrderId, FirstName, LastName, OrderDate, OrderProduct) VALUES ('10', 'Nicolae', 'Maftei', '1950608225372', '2022-02-02', '943222');

--- Instructiuni DQL (Data Query Language)

SELECT City FROM Clients;

SELECT FirstName, LastName FROM Clients;

SELECT * FROM Clients WHERE City = 'Iasi';

SELECT Model, Cm3 FROM Cars WHERE Year = '2013' OR '2023';

SELECT Model, Year FROM Cars WHERE Price_Euro = '7000' AND '6000';

SELECT * FROM clients
WHERE FirstName LIKE 'B%';

SELECT AVG (Price_Euro)
FROM Cars;

SELECT COUNT(Id)
From Clients;

SELECT SUM(Salary)
FROM clients_personal_information;

SELECT Clients.ID, clients_personal_information.CNP
FROM Clients
INNER JOIN clients_personal_information
ON Clients.FirstName = clients_personal_information.FirstName;

SELECT Clients.ID, Clients_personal_information.CNP
FROM clients
LEFT JOIN Clients_personal_information ON Clients.FirstName = clients_personal_information.FirstName
ORDER BY Clients.ID;

SELECT Clients.ID, Orders.LastName
From clients
RIGHT JOIN Orders ON Clients.FirstNAme = Orders.FirstName
ORDER By Clients.ID;

SELECT * FROM Cars
WHERE Price_Euro BETWEEN 5000 AND 10000;

SELECT MAX(Price_Euro) AS LargestPrice
FROM Cars;

SELECT MIN(Price_Euro) AS SmallestPrice
FROM Cars;