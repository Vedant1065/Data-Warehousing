USE [AdventureWorks2012]


/****** Object:  Table [HumanResources].[Emp_staging]    Script Date: 22/01/2019 05:53:10 PM ******/
SET ANSI_NULLS ON


SET QUOTED_IDENTIFIER ON


CREATE TABLE HumanResources.Emp_Staging
(BusinessEntityID INT NOT NULL ,
NationalIDNumber VARCHAR(150) NOT NULL
      ,LoginID VARCHAR(256) NOT NULL
      ,OrganizationNode VARCHAR(150) NULL
      ,OrganizationLevel VARCHAR(150) NULL
      ,JobTitle VARCHAR (150)  NULL
      ,Birthdate DATE  NULL
      ,MaritalStatus CHAR (100)
      ,Gender CHAR(150)  NULL
      ,Hiredate DATE
      ,SalariedFlag VARCHAR(100)  NULL
      ,VacationHours SMALLINT  NULL
      ,SickLeaveHours SMALLINT  NULL
      ,CurrentFlag VARCHAR(100)  NULL
      ,rowguid VARCHAR(500)  NULL
      ,Modifieddate DATETIME  NULL);
 
ALTER TABLE HumanResources.Emp_Staging ADD  CONSTRAINT [DF_Employee1_SalariedFlag]  DEFAULT ((1)) FOR [SalariedFlag]


ALTER TABLE HumanResources.Emp_Staging ADD  CONSTRAINT [DF_Employee1_VacationHours]  DEFAULT ((0)) FOR [VacationHours]


ALTER TABLE HumanResources.Emp_Staging ADD  CONSTRAINT [DF_Employee1_SickLeaveHours]  DEFAULT ((0)) FOR [SickLeaveHours]


ALTER TABLE HumanResources.Emp_Staging ADD  CONSTRAINT [DF_Employee1_CurrentFlag]  DEFAULT ((1)) FOR [CurrentFlag]


ALTER TABLE HumanResources.Emp_Staging ADD  CONSTRAINT [DF_Employee1_rowguid]  DEFAULT (newid()) FOR [rowguid]


ALTER TABLE HumanResources.Emp_Staging ADD  CONSTRAINT [DF_Employee1_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]


ALTER TABLE HumanResources.Emp_Staging  WITH CHECK ADD  CONSTRAINT [FK_Employee1_Person_BusinessEntityID] FOREIGN KEY([BusinessEntityID])
REFERENCES [Person].[Person] ([BusinessEntityID])


ALTER TABLE HumanResources.Emp_Staging CHECK CONSTRAINT [FK_Employee1_Person_BusinessEntityID]


ALTER TABLE HumanResources.Emp_Staging  WITH CHECK ADD  CONSTRAINT [CK_Employee1_BirthDate] CHECK  (([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(-18),getdate())))


ALTER TABLE HumanResources.Emp_Staging CHECK CONSTRAINT [CK_Employee1_BirthDate]


ALTER TABLE HumanResources.Emp_Staging  WITH CHECK ADD  CONSTRAINT [CK_Employee1_Gender] CHECK  ((upper([Gender])='F' OR upper([Gender])='M'))


ALTER TABLE HumanResources.Emp_Staging CHECK CONSTRAINT [CK_Employee1_Gender]


ALTER TABLE HumanResources.Emp_Staging  WITH CHECK ADD  CONSTRAINT [CK_Employee1_HireDate] CHECK  (([HireDate]>='1996-07-01' AND [HireDate]<=dateadd(day,(1),getdate())))


ALTER TABLE HumanResources.Emp_Staging CHECK CONSTRAINT [CK_Employee1_HireDate]


ALTER TABLE HumanResources.Emp_Staging  WITH CHECK ADD  CONSTRAINT [CK_Employee1_MaritalStatus] CHECK  ((upper([MaritalStatus])='S' OR upper([MaritalStatus])='M'))


ALTER TABLE HumanResources.Emp_Staging CHECK CONSTRAINT [CK_Employee1_MaritalStatus]


ALTER TABLE HumanResources.Emp_Staging  WITH CHECK ADD  CONSTRAINT [CK_Employee1_SickLeaveHours] CHECK  (([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120)))


ALTER TABLE HumanResources.Emp_Staging CHECK CONSTRAINT [CK_Employee1_SickLeaveHours]


ALTER TABLE HumanResources.Emp_Staging  WITH CHECK ADD  CONSTRAINT [CK_Employee1_VacationHours] CHECK  (([VacationHours]>=(-40) AND [VacationHours]<=(240)))


ALTER TABLE HumanResources.Emp_Staging CHECK CONSTRAINT [CK_Employee1_VacationHours]


