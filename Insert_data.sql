insert into Customers(Customer_ID,Name,Age,Gender,Income,City ,Country ,creditscore ,Join_Date,Churned ) values 
(1,'JohnDoe',45,'Male',75000.50,'Riyadh','SaudiArabia',720,'2018-05-21','No'),
(2,'JaneSmith',34,'Female',85000.00,'Toronto','Canada',680,'2019-11-12','No'),
(3,'AhmedAlFaisal',29,'Male',60000.25,'Jeddah','SaudiArabia',540,'2020-03-15','Yes'),
(4,'MaryJohnson',40,'Female',90000.00,'Vancouver','Canada',710,'2017-07-30','No'),
(5,'KhalidOmar',50,'Male',45000.00,'Dammam','SaudiArabia',630,'2016-02-10','Yes');

insert into Accountss(Account_ID,Customer_ID,Bank_Name,Account_Type,Balance,Account_Creation_Date,Last_Transaction_Date) values
(1001,1,'SaudiFransiBank','Savings',27000.30,'2018-05-21','2023-11-01'),
(1002,2,'CanadianBank','Current',32500.15,'2019-11-12','2023-10-29'),
(1003,3,'SaudiFransiBank','Business',18000.00,'2020-03-15','2023-08-15'),
(1004,4,'CanadianBank','Savings',44000.50,'2017-07-30','2023-09-20'),
(1005,5,'SaudiFransiBank','Current',15000.00,'2016-02-10','2023-07-10')

INSERT INTO Transactions (Transaction_ID, Account_ID, Transaction_Type, Transaction_Date, Transaction_Amount, Merchant_Category, Churned,Is_Fraud) 
VALUES
    ('T00001', 1001, 'Debit', '2023-10-15 14:25:00', 500.75, 'Retail', 'No','yes'),
    ('T00002', 1002, 'Credit', '2023-10-16 09:00:00', 1200.50, 'Electronics', 'No','no'),
    ('T00003', 1003, 'Debit', '2023-10-17 18:45:00', 750.00, 'Travel', 'Yes','yes'),
    ('T00004', 1004, 'Debit', '2023-11-01 10:15:00', 400.00, 'Food', 'No','no'),
    ('T00005', 1005, 'Credit', '2023-10-30 20:30:00', 2500.00, 'Healthcare', 'No','yes');
    
insert into Loans (Loan_ID,	Customer_ID	,Loan_Amount,Interest_Rate,Tenure,Defaulted) values
('L00001',1,50000.00,3.5,10,'No'),
('L00002',2,75000.00,4.2,15,'No'),
('L00003',3,30000.00,6.0,5,'Yes'),
('L00004',4,100000.00,2.5,20,'No'),
('L00005',5,40000.00,5.0,7,'Yes');
