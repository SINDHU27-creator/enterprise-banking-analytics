1.Churn Analysis: Identify churned customers and their demographics:
select City,Country,count(c.Customer_ID) as Churnedcustomer,avg(a.Balance) as Churnedcustomerbalance
from Customers c inner join Accountss a
on c.Customer_ID=a.Customer_ID
where c.Churned='Yes'
group by City,Country
order by Churnedcustomer;

2.Customer Segmentation by Balance:
select c.Customer_ID,c.Name,
case 
when a.Balance<16000 then 'Bronze'
when a.Balance between 16000 and 30000 then 'silver'
when a.Balance>30000 then 'gold' end as balancetier
from Customers c inner join Accountss a
on c.Customer_ID=a.Customer_ID;

3.SELECT 
    c.Country, 
    AVG(Loan_Amount) AS Avg_Loan, 
    AVG(Interest_Rate) AS Avg_Interest, 
    COUNT(CASE WHEN Defaulted = 'Yes' THEN 1 END) AS Defaulted_Loans
FROM Loans l inner join Customers c
    on l.Customer_ID=c.Customer_ID
GROUP BY c.Country
ORDER BY Defaulted_Loans DESC;


