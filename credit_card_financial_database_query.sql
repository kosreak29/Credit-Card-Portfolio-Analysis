-- CREATE DATABASE ccdb;
USE ccdb;
-- CREATE TABLE cc_detail (
--     Client_Num BIGINT,
--     Card_Category VARCHAR(20),
--     Annual_Fees INT,
--     Activation_30_Days INT,
--     Customer_Acq_Cost INT,
--     Week_Start_Date VARCHAR(20),
--     Week_Num VARCHAR(20),
--     Qtr VARCHAR(10),
--     current_year INT,
--     Credit_Limit DECIMAL(12,2),
--     Total_Revolving_Bal INT,
--     Total_Trans_Amt INT,
--     Total_Trans_Vol INT,
--     Avg_Utilization_Ratio DECIMAL(10,3),
--     `Use Chip` VARCHAR(20),
--     `Exp Type` VARCHAR(50),
--     Interest_Earned DECIMAL(12,2),
--     Delinquent_Acc INT
-- );
-- CREATE TABLE cust_detail (
--     Client_Num BIGINT,
--     Customer_Age INT,
--     Gender VARCHAR(10),
--     Dependent_Count INT,
--     Education_Level VARCHAR(50),
--     Marital_Status VARCHAR(20),
--     state_cd VARCHAR(20),
--     Zipcode VARCHAR(20),
--     Car_Owner VARCHAR(10),
--     House_Owner VARCHAR(10),
--     Personal_loan VARCHAR(10),
--     contact VARCHAR(50),
--     Customer_Job VARCHAR(50),
--     Income INT,
--     Cust_Satisfaction_Score INT
-- );

-- LOAD DATA LOCAL INFILE 'D:/Crio.do/DA-202/Session 6/credit_card.csv'
-- INTO TABLE cc_detail
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n'
-- IGNORE 1 ROWS;

-- LOAD DATA LOCAL INFILE 'D:/Crio.do/DA-202/Session 6/customer.csv'
-- INTO TABLE cust_detail
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n'
-- IGNORE 1 ROWS;


-- CREATE VIEW vw_credit_card_dashboard AS
-- SELECT
--     c.Client_Num,
--     c.Card_Category,
--     c.Annual_Fees,
--     c.Activation_30_Days,
--     c.Customer_Acq_Cost,
--     STR_TO_DATE(c.Week_Start_Date, '%d-%m-%Y') AS Week_Start_Date,
--     c.Week_Num,
--     c.Qtr,
--     c.current_year,
--     c.Credit_Limit,
--     c.Total_Revolving_Bal,
--     c.Total_Trans_Amt,
--     c.Total_Trans_Vol,
--     c.Avg_Utilization_Ratio,
--     c.`Use Chip` AS Use_Chip,
--     c.`Exp Type` AS Exp_Type,
--     c.Interest_Earned,
--     c.Delinquent_Acc,

--     d.Customer_Age,
--     d.Gender,
--     d.Dependent_Count,
--     d.Education_Level,
--     d.Marital_Status,
--     d.state_cd,
--     d.Zipcode,
--     d.Car_Owner,
--     d.House_Owner,
--     d.Personal_loan,
--     d.contact,
--     d.Customer_Job,
--     d.Income,
--     d.Cust_Satisfaction_Score

-- FROM cc_detail c
-- LEFT JOIN cust_detail d
--     ON c.Client_Num = d.Client_Num;

-- SELECT COUNT(*) FROM cc_detail;
-- SELECT COUNT(*) FROM cust_detail;
-- SELECT COUNT(*) FROM vw_credit_card_dashboard;


