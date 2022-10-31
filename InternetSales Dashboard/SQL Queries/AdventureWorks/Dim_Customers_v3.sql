-- Cleansed DIM_Customers Table --
SELECT 
  C.CustomerKey AS [CustomerKey], 
  --      ,[GeographyKey]
  --      ,[CustomerAlternateKey]
  --      ,[Title]
  c.FirstName AS [FirstName], 
  --      ,[MiddleName]
  C.LastName AS LastName, 
  C.FirstName + ' ' + C.LastName AS [Full Name], 
  --combined first and last name
  --      ,[NameStyle]
  --      ,[BirthDate]
  --      ,[MaritalStatus]
  --      ,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender], 
  --      ,[EmailAddress]
  --      ,[YearlyIncome]
  --      ,[TotalChildren]
  --      ,[NumberChildrenAtHome]
  --      ,[EnglishEducation]
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --     ,[AddressLine1]
  --      ,[AddressLine2]
  --      ,[Phone]
  c.DateFirstPurchase AS [DateFirstPurchase], 
  --     ,[CommuteDistance]
  g.City AS [Customer City] --Joined Customer City from dbo.DimGeography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC --Ordered list by column Customer Key
