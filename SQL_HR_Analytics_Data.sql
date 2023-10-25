/*THis is the second project being executed during the MeriSKILL Internship Experience
The data to be analysed is HR Data*/

--Overview of the data

SELECT 
   *
FROM 
   [dbo].[MeriSKILL HR Data]

--To drop/delete some columnns from the dataset

ALTER TABLE
   [dbo].[MeriSKILL HR Data]
DROP COLUMN 
   [EnvironmentSatisfaction],
   [JobInvolvement],
   [Over18],
   [PercentSalaryHike],
   [RelationshipSatisfaction],
   [StandardHours],
   [StockOptionLevel],
   [YearsInCurrentRole],
   [YearsSinceLastPromotion],
   [YearsWithCurrManager]

--To check for NULL values
SELECT 
   *
FROM
   [dbo].[MeriSKILL HR Data]
WHERE
   [Age] IS NULL
   OR [Attrition] IS NULL
   OR [BusinessTravel] IS NULL
   OR [DailyRate] IS NULL
   OR [Department] IS NULL
   OR [DistanceFromHome] IS NULL
   OR [Education] IS NULL
   OR [EducationField] IS NULL
   OR [EmployeeCount] IS NULL
   OR [EmployeeNumber] IS NULL
   OR [Gender] IS NULL
   OR [HourlyRate] IS NULL
   OR [JobLevel] IS NULL
   OR [JobRole] IS NULL
   OR [JobSatisfaction] IS NULL
   OR [MaritalStatus] IS NULL
   OR [MonthlyIncome] IS NULL
   OR [MonthlyRate] IS NULL
   OR [NumCompaniesWorked] IS NULL
   OR [OverTime] IS NULL
   OR [PerformanceRating] IS NULL
   OR [TotalWorkingYears] IS NULL
   OR [TrainingTimesLastYear] IS NULL
   OR [WorkLifeBalance] IS NULL
   OR [YearsAtCompany] IS NULL
   
--Check for duplicates
 SELECT
   [Age],
   [Attrition],
   [BusinessTravel],
   [DailyRate],
   [Department],
   [DistanceFromHome],
   [Education],
   [EducationField],
   [EmployeeCount],
   [EmployeeNumber],
   [Gender],
   [HourlyRate],
   [JobLevel],
   [JobRole],
   [JobSatisfaction],
   [MaritalStatus],
   [MonthlyIncome],
   [MonthlyRate],
   [NumCompaniesWorked],
   [OverTime],
   [PerformanceRating],
   [TotalWorkingYears],
   [TrainingTimesLastYear], 
   [WorkLifeBalance],
   [YearsAtCompany],
   COUNT(*)
FROM
   [dbo].[MeriSKILL HR Data]
GROUP BY
   [Age],
   [Attrition],
   [BusinessTravel],
   [DailyRate],
   [Department],
   [DistanceFromHome],
   [Education],
   [EducationField],
   [EmployeeCount],
   [EmployeeNumber],
   [Gender],
   [HourlyRate],
   [JobLevel],
   [JobRole],
   [JobSatisfaction],
   [MaritalStatus],
   [MonthlyIncome],
   [MonthlyRate],
   [NumCompaniesWorked],
   [OverTime],
   [PerformanceRating],
   [TotalWorkingYears],
   [TrainingTimesLastYear], 
   [WorkLifeBalance],
   [YearsAtCompany]
HAVING
   COUNT(*) > 1
ORDER BY
   [EmployeeNumber]

--No duplicates were found


