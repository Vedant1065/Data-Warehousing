Select * from HumanResources.Emp_Staging;
Select distinct JobTitle from HumanResources.Emp_Staging; 

SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[Birthdate]
      ,[MaritalStatus]
      ,[Gender]
      ,[Hiredate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[Modifieddate]
  FROM [AdventureWorks2012].[HumanResources].[Emp_Staging];