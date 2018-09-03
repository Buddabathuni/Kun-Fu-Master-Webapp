/* Class table */
CREATE TABLE Class_Details(
	Class_Id int NOT NULL,
	Class_Level varchar(100) NULL,
	Day varchar(100) NULL,
	CLass_Date date NULL,
 CONSTRAINT PK_Class_Details PRIMARY KEY CLUSTERED 
(Class_Id) );

/*Rank Table */

	CREATE TABLE Rank_Details(
	Rank_Id int NOT NULL,
	Belt_Name varchar(50) NULL,
 CONSTRAINT PK_Rank_Details PRIMARY KEY CLUSTERED 
(Rank_Id ASC ));

/*Service Details Table */

	CREATE TABLE Service_Details(
	Service_Id int NOT NULL,
	Service_Category varchar(100) NULL,
	Service_Fee float NULL,
PRIMARY KEY CLUSTERED 
(Service_Id ASC));

/*Student_Details Table */
	CREATE TABLE Student_Details(
	Stdnt_Id int NOT NULL,
	Stdnt_First_Name varchar(100) ,
	Stdnt_Last_Name varchar(100) ,
	Stdnt_Date_of_Birth date ,
	Stdnt_Date_of_Joining date ,
	Stdnt_Mobile_No varchar(50) ,
	Stdnt_Email varchar(100) ,
	Stdnt_Door_No varchar(50) ,
	Stdnt_Street varchar(50) ,
	Stdnt_City nvarchar(50) ,
	Stdnt_Province varchar(20) ,
	Stdnt_Zip_Code varchar(15) ,
	Stdnt_Primary_Contact nchar(100) ,
	Stdnt_P_Contact_No varchar(50) ,
	Stdnt_P_Email varchar(100) ,
	Stdnt_Secondary_Contact nchar(100) ,
	Stdnt_S_Contact_No varchar(50) ,
	Stdnt_S_Email varchar(100) ,
 CONSTRAINT PK_Student_Details PRIMARY KEY CLUSTERED 
(Stdnt_Id));

/*Student Account Summary Table */

	CREATE TABLE Student_Account_Summary(
	Stdnt_Id int NULL,
	Service_Id int NULL,
	Date_Paid date NULL,
	FOREIGN KEY (Stdnt_Id) REFERENCES Student_Details (Stdnt_Id),
	FOREIGN KEY (Service_Id) REFERENCES Service_Details (Service_Id))
	/*Student Attendence Table*/

	CREATE TABLE Student_Attendence_Details(
	Stdnt_Id int NULL,
	Class_Id int NULL,
	Class_Attended_Date date NULL,
	FOREIGN KEY (Stdnt_Id) REFERENCES Student_Details (Stdnt_Id),
	FOREIGN KEY (Class_Id) REFERENCES Class_Details (Class_Id));

	/*Student Login Table*/

	CREATE TABLE Student_Login_Details(
	Stdnt_Id int NULL,
	Student_Password varchar(100) NULL,
	FOREIGN KEY (Stdnt_Id) REFERENCES Student_Details (Stdnt_Id));

	/*Student Progress Details Table */

	CREATE TABLE Student_Progress_Details(
	Stdnt_Id int NULL,
	Rank_Id int NULL,
	Belt_Awarded_Date date NULL,
	FOREIGN KEY (Stdnt_Id) REFERENCES Student_Details (Stdnt_Id),
	FOREIGN KEY (Rank_Id) REFERENCES Rank_Details (Rank_Id));



