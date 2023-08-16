-- Create schema and table; upload data

CREATE schema humanresources;

CREATE TABLE humanresources.data (
	Employee_Name varchar(255),
	EmpID int PRIMARY KEY,
	MarriedID int,
	MaritalStatusID int,
	GenderID int,
	EmpStatusID int,
	DeptID int,
	PerfScoreID int,
	FromDiversityJobFairID int,
	Salary int,
	Termd int,
	PositionID int,
	Position varchar(255),
	State varchar(2),
	Zip varchar(5),
	DOB date,
	Age int,
	Sex varchar(255),
	MaritalDesc varchar(255),
	CitizenDesc varchar(255),
	HispanicLatino varchar(255),
	RaceDesc varchar(255),
	DateofHire date,
	DateofTermination date NULL,
	TermReason varchar(255),
	EmploymentStatus varchar(255),
	Department varchar(255),
	ManagerName varchar(255),
	ManagerID int,
	RecruitmentSource varchar(255),
	PerformanceScore varchar(255),
	EngagementSurvey decimal (3,2),
	EmpSatisfaction int,
	SpecialProjectsCount int,
	LastPerformanceReview_Date date,
	DaysLateLast30 int,
	Absences int
);

SELECT * FROM humanresources.data;

-- How many employees are in the database?
SELECT COUNT(DISTINCT EmpID) FROM humanresources.data;

-- How many employees are still working at the company?
SELECT COUNT(DISTINCT EmpID) FROM humanresources.data WHERE DateofTermination IS NULL;

-- What is the gender breakdown of current employees?
SELECT Sex, COUNT(DISTINCT EmpID) FROM humanresources.data WHERE DateofTermination IS NULL GROUP BY Sex;

-- What is the breakdown by marital status of current employees?
SELECT MaritalDesc, COUNT(DISTINCT EmpID) FROM humanresources.data WHERE DateofTermination IS NULL GROUP BY MaritalDesc;

-- How many managers are there? 
SELECT COUNT(DISTINCT ManagerName) FROM humanresources.data;

-- How many current employees does each manager have?
SELECT ManagerName, COUNT(DISTINCT EmpID) FROM humanresources.data WHERE DateofTermination IS NULL GROUP BY ManagerName;

-- What is the racial diversity of the current employees?
SELECT RaceDesc, COUNT(DISTINCT EmpID) FROM humanresources.data WHERE DateofTermination IS NULL GROUP BY RaceDesc;

-- What is the racial diversity of the employees who have been terminated?
SELECT RaceDesc, COUNT(DISTINCT EmpID) FROM humanresources.data WHERE DateofTermination IS NOT NULL GROUP BY RaceDesc;

-- How many current employees are in each salary range?
select case
    when salary between 0 and 50000 then 'Under 50k'
    when salary between 50000 and 75000 then '50k-75k'
    when salary between 75000 and 100000 then '75k-100k'
    when salary between 100000 and 125000 then '100k-125k'
    when salary between 125000 and 150000 then '125k-150k'
    else '150k+' 
    end as salaryrange,
    count(1) as 'Count'
  FROM humanresources.data
  WHERE DateofTermination IS NULL
  GROUP BY salaryrange;
  
-- How many current employees are in each age range?
select case
    when age between 20 and 29 then '20-29'
    when age between 30 and 39 then '30-39'
    when age between 40 and 49 then '40-49'
    when age between 50 and 59 then '50-59'
    when age between 60 and 69 then '60-69'
    else '70+' 
    end as agerange,
    count(1) as 'Count'
  FROM humanresources.data
  WHERE DateofTermination IS NULL
  GROUP BY agerange;




