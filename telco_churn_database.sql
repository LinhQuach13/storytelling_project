#load telco_churn database
USE telco_churn;

#view contents in contract_types table
SELECT * 
from contract_types;

#view contents in internet_service_types table
SELECT * 
FROM internet_service_types;


#view contents in payment_types table
SELECT * 
FROM payment_types;

#view contents in customers table
SELECT * 
FROM customers;


#Join customer service with contract type: Count the amount of senior citizens total (includes all plan types)
select COUNT(senior_citizen)
FROM customers
JOIN contract_types;

# Overall count senior citzens who have churned (includes all plan types)
select count(senior_citizen)
FROM customers
WHERE senior_citizen;

# number of senior citizens who are month to month plan that have churned 
select COUNT(churn)
FROM customers
JOIN contract_types ON customers.contract_type_id = contract_types.contract_type_id
WHERE senior_citizen =1 AND churn = "Yes" AND customers.contract_type_id = 1;


# number of senior citizens who are on month to month plans including churn and not churned customers
select COUNT(senior_citizen)
FROM customers
JOIN contract_types ON customers.contract_type_id = contract_types.contract_type_id
WHERE senior_citizen= 1 AND customers.contract_type_id= 1;


