--Cleansed DIM_DateTable
SELECT
       [DateKey]
     , [FullDateAlternateKey] AS Date
     ,
        --[DayNumberOfWeek]
       [EnglishDayNameOfWeek] AS Day
     ,
        --[SpanishDayNameOfWeek]
       --[FrenchDayNameOfWeek]
       --[DayNumberOfMonth]
       --[DayNumberOfYear]
       --[WeekNumberOfYear]
       [EnglishMonthName]         AS Month
     , LEFT([EnglishMonthName],3) AS MonthShort
     , --Useful for front-end date navigation and front end-graphs
       --[SpanishMonthName]
       --[FrenchMonthName]
       [MonthNumberOfYear] AS Monthno
     , [CalendarQuarter]   AS Quarter
     , [CalendarYear]      AS Year
     
        --[CalendarSemester]
       --[FiscalQuarter]
       --[FiscalYear]
       --[FiscalSemester]
FROM
       [AdventureWorksDW2019].[dbo].[DimDate]
WHERE
       CalendarYear >=2019