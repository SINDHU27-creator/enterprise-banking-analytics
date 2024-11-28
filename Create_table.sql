create database banks;
show databases;
use  banks;

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Income decimal(10,2),
    City VARCHAR(50),
    Country VARCHAR(50),
    creditscore int,
    Join_Date DATE,
    Churned VARCHAR(5)
);

CREATE TABLE Accountss (
    Account_ID INT PRIMARY KEY,
    Customer_ID INT,
    Bank_Name VARCHAR(50),
    Account_Type varchar(30),
    Balance DECIMAL(15, 2),
    Account_Creation_Date DATE,
    Last_Transaction_Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Transactions (
    Transaction_ID VARCHAR(10) PRIMARY KEY,
    Account_ID INT,
    Transaction_Type VARCHAR(10),
    Transaction_Amount DECIMAL(15, 2),
    Transaction_Date DATETIME,
    Merchant_Category VARCHAR(50),
    Churned VARCHAR(15),
    Is_Fraud VARCHAR(15),
    FOREIGN KEY (Account_ID) REFERENCES Accountss(Account_ID)
);

create table Loans
(Loan_ID varchar(30),	
Customer_ID	int,
Loan_Amount	decimal(10,2),
Interest_Rate int,
Tenure int,
Defaulted varchar(20));
    