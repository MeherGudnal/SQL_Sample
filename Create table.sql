Use HIMS;

-- Creating Access table Schema --

Set Ansi_Nulls on ;
Set Quoted_identifier on;



Create table dbo.AccessRight(
AccessRightID bigint Identity (1,1) Not Null,
UserID bigint Not Null,
FunctionalityID bigint Not Null,
Status bit Null,
AddedBy int Null,
AddedDateTime datetime Null,
UpdatedBy bigint Null,
UpdatedDateTime datetime Null,
Primary key Clustered

 (
 AccessRightID Asc
 )

)
Go 

-- Creating Admission table and their Schema --

Set Ansi_Nulls on;
Set Quoted_Identifier on;

Go
--Drop table dbo.Admission;--

Create Table dbo.AdmissionC (

AdmissionID bigint Identity(1,1) Not Null,
PatientcategoryID int Not Null,
PatientID bigint Not Null,
UnitID int Not Null,
DoctorID bigint Not Null,
AdmissionDate Datetime Not Null,
IPDNumber bigint Not Null,
RelativeName nvarchar(200) Null,
RelationID int Null,
BedID int Not Null,
CompanyID int Not Null,
IsMLC bit Null,
Status bit Null,
AddedBy int Null,
AddedDatetime Datetime Null,
UpdatedBy bigint Null,
UpdatedDateTime datetime Null,
CONSTRAINT PK__Admissio__C97EEC427DFE4C43 PRIMARY KEY CLUSTERED 
	(
		AdmissionId ASC
	) 
); 

--Creating Advanced table and thier Schema --

Set Ansi_Nulls on
Go 
Set quoted_Identifier On 
Go 

Create Table [dbo].[Advanced] (
AdvancedID bigint identity(1,1) Not Null,
PatientID bigint Not Null,
AdvAmount numeric(18,2) Null,
Used numeric(18,2) Null,
Refund numeric(18,2) Null,
Balance Numeric (18,2) Null,
Status bit Null,
AddedBy int Null,
AddedDateTime datetime Null,
UpdatedBy bigint Null,
UpdatedDateTime datetime Null,
Primary key Clustered 
 (
AdvancedId ASC
  )
);
Go
---select * from dbo.Advanced;

--Creating Table ApplicationFunctionality With Schema --


Set Ansi_Nulls On
Go
Set Quoted_Identifier On
Go

--Select * from dbo.ApplicationFunctionality;

Create Table dbo.ApplicationFunctionality (

FunctionalityId bigint Identity(1,1) Not Null,
Name Nvarchar(50) Not Null,
Level int Not Null,
Status bit Null,
AddedBy int Null,
AddedDateTime Datetime Null,
UpdatedBy bigint Null,
UpdatedDateTime Datetime Null,
Primary key Clustered 
 (
 FunctionalityId ASC 
 )

);
Go

Set Ansi_Nulls On
Go 
Set Quoted_Identifier On
Go 

--Creating Table Bed With Thier Schema --

Create Table dbo.Bed (
  BedID int Identity(1,1) Not Null,
  Name nvarchar(50) Not Null,
  WardID int Null,
  RoomID int Null,
  Status bit Null,
  AddedBy int Null,
  AddedDateTime Datetime Null,
  UpdatedBy bigint Null,
  UpdatedDateTime datetime Null,
 CONSTRAINT [PK__BedId__A8A7104054C04A45] PRIMARY KEY CLUSTERED 
 (
	[BedId] ASC
 ) 
);
Go 

--Creating Bill Table With Thier Schema --

Set Ansi_Nulls On ;
Go 
Set Quoted_Identifier On ;
Go 


Create Table dbo.Bill (

 BillID bigint Identity(1,1) Not Null,
 BillDateTime Datetime Null,
 VisitedID bigint Null,
 AdmissionID bigint Null,
 TotalAmount numeric(18,2) Null,
 AdvancedAmount numeric(18,2) Null,
 Concession numeric(18,2) Null,
 FinalBillAmount numeric(18,2) Null,
 Status bit Null,
 AddedBy int Null,
 AddedDatetime Datetime Null,
 UpdatedBy bigint Null,
 UpdatedDateTime datetime  Null,
  CONSTRAINT [PK__Bill__11F2FC6A9060F41C] PRIMARY KEY CLUSTERED 
 (
	[BillId] ASC
 )

);
Go

Set Ansi_nulls on;
Go 
Set Quoted_Identifier On ;
Go 
--Creating Table Charge--
Create Table Charge (
ChargeID bigint Identity(1,1) Not Null,
Visited bigint Null,
AdmissionID bigint Null,
ServiceID bigint Not Null,
Rate numeric(18,2) Not Null,
Quantity int Not Null,
Amount numeric(18,2) Not Null,
Concession numeric (18,2) Null,
Status bit Null,
AddedBy int Null,
AddedDateTime datetime Null,
UpdatedBy bigint Null,
UpdatedDateTime datetime Null,
 CONSTRAINT [PK__Charge__17FC361B131A7AE4] PRIMARY KEY CLUSTERED 
 (
	ChargeId ASC
 ) 

);
Go

Set Ansi_Nulls on ;
Go 
Set Quoted_Identifier On;
Go

--Creating City Table With Thier Schema --


Create Table dbo.City (
 CityID int Identity(1,1) Not Null,
 Name nvarchar(50) Not Null,
 StateID int Not Null,
 Status bit Null,
 AddedBy int Null,
 AddedDateTime datetime Null,
 UpdatedBy bigint Null,
 UpdatedDateTime datetime Null,
  CONSTRAINT [PK__City__F2D21A96E551186A] PRIMARY KEY CLUSTERED 
 (
	[CityID] ASC
 ) 
);
Go

Set Ansi_Nulls on ;
Go 
Set Quoted_Identifier On;
Go

--Creating Country Table --

Create Table dbo.Country (

 CountryID int Identity(1,1) Not Null,
 Name nvarchar(50) Not Null,
 NationalityID int Null,
 Status bit Null,
 AddedBy int Null,
 AddedDateTime datetime Null,
 UpdateddBy bigint Null,
 UpdatedDateTime Datetime Null,
  CONSTRAINT [PK__Country__10D160BF12515864] PRIMARY KEY CLUSTERED 
 (
	CountryID ASC
 ) 
);
Go
Set Ansi_Nulls On ;
Go 
Set Quoted_Identifier On;
Go 

--Creating Department Table --

Create Table dbo.Department (
DepartmentID int Identity (1,1) Not Null,
Name nvarchar(50) Not Null,
IsClinical bit Not Null,
Status bit Null,
AddedBy int Null,
AddedDateTime dateTime Null,
UpdatedBy bigint Null,
UpdatedDateTime datetime Null,
  CONSTRAINT [PK__Departme__BF50FAFB2901D316] PRIMARY KEY CLUSTERED 
 (
	DepartmentID ASC
 ) 
);
Go

Set Ansi_Nulls on;
Go
Set Quoted_Identifier On;
Go 
--Creating Discharge Table with Thier Schema --


Create Table dbo.Discharge (
 DischargeID bigint Identity(1,1) Not Null,
 AdmissionID bigint Not Null,
 DoctorID bigint Not Null,
 DischargeDate datetime Not NULL,
 DischargeNotes nvarchar(2000) Null,
 FileAttachedPath nvarchar(500) Null,
 Status bit Null,
 AddedBy int Null,
 AddedDatetime datetime Null,
 UpdatedBy bigint Null,
 UpdatedDatetime Datetime Null,
   CONSTRAINT [PK__Discharg__CBC0800799D57BD3] PRIMARY KEY CLUSTERED 
 (
	[DischargeId] ASC
 ) 
);
Go 

Set Ansi_Nulls On;
Go 
Set Quoted_Identifier On;
Go

--Creating Doctor Deatil Table and Thier Data 

Create Table dbo.Doctor (
DoctorID bigint Identity(1,1) not Null,
DepartmentID int Not Null,
FirstName nvarchar(150) Null,
MiddleName nvarchar(150) Null,
LastName nvarchar(150) Null,
Qualification nvarchar(150) Null,
GenderID int Null,
DateOfBirth date Null,
ContactNo1 nvarchar (15) Null,
ContactNo2 nvarchar (15) Null,
Email nvarchar (100) Null,
AddressLine1 nvarchar(150) Null,
AddressLine2 nvarchar(150) Null,
Pincode nvarchar(10) Null,
CityID int Null,
Status bit Null,
AddedBy int Null,
AddedDatetime datetime Null,
UpdatedBy bigint Null,
UpdatedDatetime Datetime Null,
  CONSTRAINT [PK__Doctor__2DC00EDF448A8A51] PRIMARY KEY CLUSTERED 
 (
	DoctorID ASC
 ) 
);
Go 

--Creating Gender Table And thier Schema --

Set Ansi_Nulls on;
Go 
Set Quoted_Identifier On;
Go

Create Table dbo.Gender (
GenderID int Identity(1,1) Not Null,
Name nvarchar(50) Not Null ,
Status bit Null,
AddedBy int Null,
AddedDateTime datetime Null,
UpdatedBy bigint Null,
UpdatedDateTime datetime Null,
  CONSTRAINT [PK__Gender__4E24E81738FADBDD] PRIMARY KEY CLUSTERED 
 (
	GenderID ASC
 ) 
);
Go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating InsuranceCompany Table --

Create Table InsuranceCompany (
 CompanyID int Identity(1,1) Not Null,
 Name nvarchar(50) Not Null,
 Status bit null,
 AddedBy int Null,
 AddedDateTime datetime Null,
 UpdateddBy bigint Null,
 UpdatedDatetime datetime Null,
   PRIMARY KEY CLUSTERED 
 (
	CompanyId ASC
 ) 
);
Go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating Nationality Table --

Create Table dbo.Nationality (
NationalityId Int Identity (1,1) Not Null,
Name nvarchar (50) Not Null,
Status bit Null,
AddedBy int Null,
AddedDatetime datetime  Null,
UpdatedBy int Null,
UpdatedDatetime datetime Null,
  CONSTRAINT [PK__National__F628E7A4F44C1021] PRIMARY KEY CLUSTERED 
 (
	NationalityID ASC
 ) 
);
Go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creating Patient Table --

Create Table dbo.Patient (
 PatientID bigint Identity(1,1) Not Null,
 FirstName nvarchar (150) Not Null,
 MiddleName nvarchar (150) Not Null,
 LastName nvarchar (150) Not Null,
 GenderID int Not Null,
 DateofBirth Date Null,
 ContactNo1 nvarchar(15) Null,
 ContactNo2 nvarchar(15) Null,
 Email nvarchar(100) Null,
 AddressLine1 nvarchar(150) Null, 
 AddressLine2 nvarchar(150) Null,
 Pincode nvarchar(10) Null,
 CityID int Null,
 Status bit Null,
 AddedBy int Null,
 AddedDateTime datetime Null,
 UpdatedBy bigint Null,
 UpdatedDatetime datetime Null,
   PRIMARY KEY CLUSTERED 
  (
	PatientID ASC
  ) 
);
Go

--Creating PatientCategory--

Create Table PatientCategory (
 PatientCategoryId int Identity(1,1) Not Null,
 Name nvarchar(50) Not Null,
 Status bit Null,
 Addedby int Null,
 AddedDateTime datetime Null,
 UpdatedBy bigint Null,
 UpdatedDatetime Datetime Null,
   CONSTRAINT [PK__PatientC__F659E81CA9686ED9] PRIMARY KEY CLUSTERED 
  (
	[PatientCategoryID] ASC
  ) 
);
Go 

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating Relation Tbale --

Create Table dbo.Relation(
 RelationID int Identity(1,1) Not Null,
 Name nvarchar(50) Not Null,
 Status bit Null,
 AddedBy int Null,
 AddedDatetime Datetime Null,
 UpdatedBy bigint Null,
 UpdatedDateTime Datetime Null,
    CONSTRAINT [PK__Relation__E2DA1695492E1EFE] PRIMARY KEY CLUSTERED 
  (
	[RelationID] ASC
  ) 
);
Go
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating Room table --

Create Table dbo.Room (
RoomID int Identity(1,1) Not Null,
Name nvarchar(50) Not Null,
WardID int Not Null,
Status bit Null,
AddedBy int Null,
AddedDateTime datetime Null,
UpdatedBy bigint Null,
UpdatedDatetime Datetime Null,
 CONSTRAINT [PK__Room__32863939FACFA302] PRIMARY KEY CLUSTERED 
 (
	RoomId ASC
 ) 
);
Go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating Service Table --

Create Table dbo.Service(
 ServiceID bigint Identity(1,1) Not Null,
 Name nvarchar(200) Not Null,
 ServiceCategoryID int Not Null,
 Rate numeric(18,2) Not NUll,
 ServiceTypeID int Not Null,
 CompanyID int Null,
 Status bit Null,
 AddedBy int Null,
 AddedDatetime datetime Null,
 UpdatedBy bigint Null,
 UpdatedDateTime datetime Null,
  CONSTRAINT [PK__Service__C51BB00A08435475] PRIMARY KEY CLUSTERED 
 (
	[ServiceId] ASC
 ) 
);

Go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating ServiceCategory Table --

Create Table dbo.ServiceCategory (
ServiceCategoryID int Identity(1,1) Not Null,
Name nvarchar(50) Not Null,
Status bit Null,
AddedBy int Null,
AddedDatetime Datetime Null,
UpdatedBy bigint Null,
UpdatedDateTime datetime Null,
  CONSTRAINT [PK__ServiceC__E4CC7EAA0B2769CC] PRIMARY KEY CLUSTERED 
  (
	ServiceCategoryId ASC
  ) 
);
Go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating ServiceType Table --

Create Table dbo.ServiceType (
 ServiceTypeID int Identity(1,1) Not Null,
 Name nvarchar(50) Null,
 Status bit Null,
 AddedBy int Null,
 Addeddatetime datetime Null,
 UpdatedBy bigint Null,
 UpdatedDateTime Datetime Null,
 PRIMARY KEY CLUSTERED 
 (
	[ServiceTypeID] ASC
 ) 
);

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating Staff Table --

Create Table dbo.Staff (
 StaffID bigint Identity(1,1) Not Null,
 DepartmentID int Not Null,
 FirstName nvarchar(150) Not Null,
 MiddleName nvarchar(150) Not Null,
 LastName nvarchar(150) Not Null ,
 GenderID int Not Null,
 DateOfBirth date Null,
 ContactNo1 nvarchar(15) Null,
 ContactNo2 nvarchar(15) Null,
 Email nvarchar(100) Null,
 AddressLine1 nvarchar (150) Null,
 AddressLine2 nvarchar (150) Null,
 Pincode nvarchar (150) Null,
 CityID int Null,
 Status bit Null,
 AddedBy int Null,
 AddedDatetime datetime Null,
 UpdateBy bigint Null,
 UpdatedDateTime Datetime Null,
  CONSTRAINT [PK__Staff__96D4AAF72C6A8DDE] PRIMARY KEY CLUSTERED 
  (
	StaffID ASC
  ) 
);

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating State Table --

Create Table dbo.State (
StateID int Identity (1,1) Not Null,
Name nvarchar(50) Not Null,
CountryID int Null,
Status bit Null,
AddedBy int Null,
AddedDatetime Datetime Null,
UpdatedBy bigint Null,
UpdatedDatetime datetime Null,
  CONSTRAINT [PK__State__C3BA3B5A33A88EFB] PRIMARY KEY CLUSTERED 
 (
	StateID ASC
 ) 
);
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating Unit Table --

Create Table dbo.Unit (
UnitID int Identity(1,1) Not Null,
Name nvarchar(50) Not Null,
Status bit Null,
AddedBy int Null,
AddedDatetime Datetime Null,
UpdatedBy bigint Null,
UpdatedDatetime Datetime null,
   CONSTRAINT [PK__Unit__44F5EC95BCB1E006] PRIMARY KEY CLUSTERED 
  (
	UnitID ASC
  ) 
);
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON;
GO

--Creating Table User --

Create Table dbo.[User] (
 UserID bigint Identity(1,1) Not Null,
 StaffID bigint Not Null,
 Status bit Null,
 AddedBy int Null,
 AddedDatetime datetime Null,
 UpdatedBy int Null,
 UpdatedDatetime Datetime null,
 CONSTRAINT [PK__User__1788CCACE974F580] PRIMARY KEY CLUSTERED 
 (
	UserID ASC
 ) 
); 
GO
SET ANSI_NULLS ON ;
GO
SET QUOTED_IDENTIFIER ON ;
GO

--Creating Visit Table --

Create Table dbo.Visit (
 VisitID bigint Identity(1,1) Not null,
 PatientCategoryID int Not Null,
 PatientID bigint Not Null,
 DoctorID Bigint Not Null,
 UnitID int Not Null,
 VisitDate datetime Not Null,
 OPDNumber bigint Not Null,
 Status bit Null,
 AddedBy int Null,
 AddedDatetime datetime Null,
 UpdateBy bigint Null,
 UpdatedDatetime Datetime Null,
   CONSTRAINT [PK__Visit__4D3AA1DE33E909FD] PRIMARY KEY CLUSTERED 
  (
	VisitId ASC
  ) 
);
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creating Ward Table --

Create Table dbo.Ward(
 WardID int Identity(1,1) Not Null,
 Name nvarchar(50) Not Null,
 UnitID int Null,
 Status bit Null,
 AddedBy int Null,
 AddedDatetime datetime Null,
 UpdatedBy bigint Null,
 UpdatedDatetime Datetime Null,
   CONSTRAINT [PK__Ward__C6BD9BEA33313C46] PRIMARY KEY CLUSTERED 
  (
	WardID ASC
  ) 
); 
GO

--Creating Prescription Table --

Create Table dbo.Prescription (
 Prescription bigint Identity(1,1) Not Null Primary key ,
 VisitID bigint Not Null,
 Path varchar(500),
 Status bit Null default(1),
 AddedBy int Null,
 AddedDatetime datetime Null Default(getdate()),
 UpdatedBy bigint Null,
 UpdatedDatetime datetime Null Default (getdate()),
 );
 
 Alter Table dbo.Prescription add Constraint FK_Prescription_Visit
 Foreign key (VisitID)
 references dbo.Visit(VisitID);
 Go

 --Creating Clinical Notes Table --

 Create Table dbo.ClinicalNote (
 ClinicalNoteID bigint Identity(1,1) Not Null Primary Key,
 AdmissionID bigint Not Null,
 Path Varchar(500),
 Status bit Null Default (1),
 AddedBy int Null,
 AddedDatetime datetime Null Default (getdate()),
 UpdatedBy bigint Null,
 UpdatedDatetime datetime Null Default (getdate())
 );

 Alter Table dbo.ClinicalNote add Constraint FK_ClinicalNote_Admission 
 Foreign key (AdmissionID)
 references dbo.AdmissionC(admissionID);

 Alter Table dbo.AccessRight Add default (1) for Status ;
 Go 
 Alter Table dbo.AccessRight add default (getdate()) for
 AddedDateTime ;
  Go 

  Alter Table dbo.AccessRight Add Default(getdate()) For
  UpdatedDateTime ;

  Go
  Alter Table dbo.Admission Add Constraint DF_Addmission_Admis
  Default (getdate()) for AdmissionDate;
  Go

  Alter Table dbo.Admission Add Constraint DF_Admission_Status
  Default(1) for Status ;
  Go

  Alter Table dbo.Admission Add Constraint Df_Admission_Added
  Default (getdate()) for AddedDatetime;
  Go

  Alter Table dbo.Admission Add Constraint DF_Admission_Update
  Default (getdate()) for UpdatedDateTime;
  Go

  Alter Table [dbo].[Advanced] Add Default (1) for status;
  Go

  Alter Table dbo.[Advanced] Add Default (getdate()) for 
  AddedDatetime ;
  Go

  Alter Table dbo.[Advanced] Add Default (getdate()) for UpdatedDatetime;
  Go

  Alter Table dbo.ApplicationFunctionality Add default (1)
  for Status;
  Go


  Alter Table dbo.ApplicationFunctionality Add Default (getdate()) for
  AddedDatetime;
  Go

  Alter Table dbo.ApplicationFunctionality Add Default (getdate())
  for UpdatedDatetime;
  Go
 
  Alter Table dbo.Bed Add Constraint DF__BedId__Status__0EF836A4
  Default (1) for Status;
  Go 

  Alter Table dbo.Bed Add Constraint DF__BedId__AddedDate__0FEC5ADD
  Default (getdate()) for AddedDatetime ;
  Go

  Alter Table dbo.Bill Add Constraint DF__Bill__BillDateTi__29E1370A
  Default (getdate()) for BillDateTime;
  Go

  Alter Table dbo.Bill Add Constraint DF__Bill__Status__2AD55B43
  default (1) for Status ;
  Go

  Alter Table dbo.bill Add Constraint DF__Bill__AddedDateT__2BC97F7C
  Default (getdate()) For AddedDatetime ;
  Go

 Alter Table dbo.Bill Add Constraint DF__Bill__UpdatedDat__2CBDA3B5--
 Default (getdate()) for UpdatedDatetime;
 Go

 Alter Table dbo.Charge Add Constraint DF__Charge__Status__2F9A1060
 Default (1) for Status;
 Go
  
  Alter Table dbo.Charge Add Constraint DF__Charge__AddedDat__308E3499
  Default (getdate()) for AddedDatetime;
  Go

  Alter Table dbo.Charge Add Constraint DF__Charge__UpdatedD__318258D2
  default (getdate()) for Updateddatetime;
  Go

  Alter Table dbo.City Add Constraint DF__City__Status__02FC7413
  Default (1) for Status ;
  Go

  Alter Table dbo.City Add constraint DF__City__AddedDateT__03F0984C
  Default (getdate()) for AddedDatetime ;
  Go

  Alter Table dbo.City Add Constraint DF__City__UpdatedDat__04E4BC85
  Default (getdate()) for UpdatedDatetime ;
  Go

  Alter Table dbo.Country Add Constraint DF__Country__Status__71D1E811
  default (1) for Status ;
  Go

  Alter Table dbo.Country Add Constraint DF__Country__AddedDa__72C60C4A 
  default (getdate()) for AddedDatetime;
  Go 

  Alter Table dbo.Country Add Constraint DF__Country__Updated__73BA3083
  Default (getdate()) for Updateddatetime;
  Go
  Alter Table dbo.Department Add Constraint DF__Departmen__Statu__1F98B2C1
  default (1) for status;
  Go
  Alter Table dbo.Department Add Constraint DF__Departmen__Added__208CD6FA
  Default (getdate()) for Addeddatetime;
  Go
  Alter Table dbo.department Add Constraint DF__Departmen__Updat__2180FB33
  Default(getdate()) for UpdatedDatetime ;
  Go
  Alter Table dbo.Discharge Add Constraint DF__Discharge__Disch__22401542
  Default (getdate()) for DischargeDate;
  Go
  Alter Table dbo.Discharge Add Constraint DF__Discharge__Statu__2334397B
  Default(1) for Status;
  Go
  Alter table dbo.Discharge Add Constraint DF__Discharge__Added__24285DB4
  Default (getdate()) for AddedDatetime;
  Go
  Alter Table dbo.Discharge Add Constraint DF__Discharge__Updat__251C81ED
  Default (getdate()) for UpdatedDatetime;
  Go
  Alter Table dbo.Doctor Add Constraint DF__Doctor__Status__2739D489
  Default (1) for Status;
  Go
  Alter Table dbo.Doctor Add Constraint DF__Doctor__AddedDat__282DF8C2
  Default(getdate()) for AddedDatetime;
  Go
  Alter Table dbo.Doctor Add Constraint DF__Doctor__UpdatedD__29221CFB
  Default(getdate()) for UpdatedDateTime;
  Go
  Alter Table dbo.Gender Add Constraint DF__Gender__Status__4BAC3F29
  Default(1) for Status;
  Go
  Alter Table dbo.Gender Add Constraint DF__Gender__AddedDat__4CA06362
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Gender Add Constraint DF__Gender__UpdatedD__4D94879B
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.InsuranceCompany Add Default(1) for Status;
  Go
  Alter Table dbo.InsuranceCompany Add Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.InsuranceCompany Add default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.Nationality Add Constraint DF__Nationali__Statu__5070F446
  Default(1) for Status;
  Go
  Alter Table dbo.Nationality Add Constraint DF__Nationali__Added__5165187F
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Nationality Add Constraint DF__Nationali__Updat__52593CB8
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.Patient ADD Default(1) for Status;
  Go
  Alter Table dbo.Patient Add Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Patient Add Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.PatientCategory ADD Constraint DF__PatientCa__Statu__46E78A0C
  Default(1) for Status;
  Go
  Alter Table dbo.PatientCategory Add Constraint DF__PatientCa__Added__47DBAE45
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.PatientCategory Add Constraint DF__PatientCa__Updat__48CFD27E
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.Relation ADD Constraint DF__Relation__Status__13F1F5EB
  Default(1) for Status;
  Go
  Alter Table dbo.Relation Add Constraint DF__Relation__AddedD__14E61A24
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Relation Add Constraint DF__Relation__Update__15DA3E5D
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.Room ADD Constraint DF__Room__Status__0A338187
  Default(1) for Status;
  Go
  Alter Table dbo.Room Add Constraint DF__Room__AddedDateT__0B27A5C0
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Room Add Constraint DF__Room__UpdatedDat__0C1BC9F9
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.Service ADD Constraint DF__Service__Status__57DD0BE4
  Default(1) for Status;
  Go
  Alter Table dbo.Service Add Constraint DF__Service__AddedDa__58D1301D
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Service Add Constraint DF__Service__Updated__59C55456
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.ServiceCategory ADD Constraint DF__ServiceCa__Statu__531856C7
  Default(1) for Status;
  Go
  Alter Table dbo.ServiceCategory Add Constraint DF__ServiceCa__Added__540C7B00
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.ServiceCategory Add Constraint DF__ServiceCa__Updat__55009F39
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.ServiceType ADD  
  Default(1) for Status;
  Go
  Alter Table dbo.ServiceType Add  
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.ServiceType Add  
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.Staff ADD Constraint DF__Staff__Status__3F115E1A
  Default(1) for Status;
  Go
  Alter Table dbo.Staff Add Constraint DF__Staff__AddedDate__40058253
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Staff Add Constraint DF__Staff__UpdatedDa__40F9A68C
  Default(getdate()) for UpdatedDateTime ;
  Go
   Alter Table dbo.State ADD Constraint DF__State__Status__6383C8BA
  Default(1) for Status;
  Go
  Alter Table dbo.State Add Constraint DF__State__AddedDate__6477ECF3
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.State Add Constraint DF__State__UpdatedDa__656C112C
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.Unit ADD Constraint DF__Unit__Status__5535A963
  Default(1) for Status;
  Go
  Alter Table dbo.Unit Add Constraint DF__Unit__AddedDateT__5629CD9C
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Unit Add Constraint DF__Unit__UpdatedDat__571DF1D5
  Default(getdate()) for UpdatedDateTime ;
  Go
  Alter Table dbo.[User] ADD Constraint DF__User__Status__45BE5BA9
  Default(1) for Status;
  Go
  Alter Table dbo.[User] Add Constraint DF__User__AddedDateT__46B27FE2
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.[User] Add Constraint DF__User__UpdatedDat__47A6A41B
  Default(getdate()) for UpdatedDateTime ;
  Go
  --be--
  Alter Table dbo.Visit ADD Constraint DF__Visit__Status__6166761E
  Default(1) for Status;
  Go
  Alter Table dbo.Visit Add Constraint DF__Visit__VisitDate__607251E5
  Default(getdate()) for VisitDate ;
  Go
  Alter Table dbo.Visit Add Constraint DF__Visit__AddedDate__625A9A57
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Visit Add Constraint DF__Visit__UpdatedDa__634EBE90
  Default(getdate()) for UpdatedDateTime ;
  Go
 --be--
  Alter Table dbo.Ward ADD Constraint DF__Ward__Status__056ECC6A
  Default(1) for Status;
  Go
  Alter Table dbo.Ward Add Constraint DF__Ward__AddedDateT__0662F0A3
  Default(getdate()) for AddedDateTime ;
  Go
  Alter Table dbo.Ward Add Constraint DF__Ward__UpdatedDat__075714DC
  Default(getdate()) for UpdatedDateTime ;
  Go


































