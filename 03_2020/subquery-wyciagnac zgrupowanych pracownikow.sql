/****** Script for SelectTopNRows command from SSMS  ******/
SELECT EmployeeNationalIDAlternateKey, COUNT(*)
      
  FROM DimEmployee
  GROUP BY EmployeeNationalIDAlternateKey
  HAVING COUNT(*) > 1


  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM DimEmployee

WHERE EmployeeNationalIDAlternateKey in (
      
  SELECT EmployeeNationalIDAlternateKey FROM DimEmployee
  GROUP BY EmployeeNationalIDAlternateKey
  HAVING COUNT(*) > 1);