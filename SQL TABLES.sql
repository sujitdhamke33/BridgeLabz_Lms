create database bridgelabz_management_system;
use bridgelabz_management_system ;

CREATE TABLE User_Details (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    password VARCHAR(50) NOT NULL,
    contact_number VARCHAR(20),
    verified BOOLEAN,
    creator_stamp TIMESTAMP,
    creator_user int
);

CREATE TABLE Hired_Candidate (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Middle_Name VARCHAR(50),
    Last_Name VARCHAR(50) NOT NULL,
    EmailId VARCHAR(50) UNIQUE NOT NULL,
    Hired_City VARCHAR(50),
    Degree VARCHAR(50),
    Hired_Date DATE,
    Mobile_Number VARCHAR(20),
    Permanent_Pincode VARCHAR(10),
    Hired_Lab VARCHAR(50),
    Attitude VARCHAR(255),
    Communication_Remark VARCHAR(255),
    Knowledge_Remark VARCHAR(255),
    Aggregate_Remark VARCHAR(255),
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User INT,
    foreign key (Creator_User) references User_Details(id)
);


CREATE TABLE Fellowship_Candidate (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Candidate_Id int,
    First_Name VARCHAR(50) NOT NULL,
    Middle_Name VARCHAR(50),
    Last_Name VARCHAR(50) NOT NULL,
    EmailId VARCHAR(255) UNIQUE NOT NULL,
    Hired_City VARCHAR(50),
    Degree VARCHAR(50),
    Hired_Date DATE,
    Mobile_Number VARCHAR(20),
    Permanent_Pincode VARCHAR(10),
    Hired_Lab VARCHAR(50),
    Attitude VARCHAR(255),
    Communication_Remark VARCHAR(255),
    Knowledge_Remark VARCHAR(255),
    Aggregate_Remark VARCHAR(255),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Birth_Date DATE,
    Is_Birth_Date_Verified BOOLEAN,
    Parent_Name VARCHAR(100),
    Parent_Occupation VARCHAR(50),
    Parents_Mobile_Number VARCHAR(20),
    Parents_Annual_Salary DECIMAL(10,2),
    Local_Address VARCHAR(255),
    Permanent_Address VARCHAR(255),
    Photo_Path VARCHAR(255),
    Joining_Date DATE,
    Candidate_Status VARCHAR(20),
    Personal_Information TEXT,
    Bank_Information TEXT,
    Educational_Information TEXT,
    Document_Status VARCHAR(20),
    Remark TEXT,
    Creator_User INT,
    foreign key (Creator_User) references Hired_Candidate(Id)
    );
    
    CREATE TABLE Candidate_Documents (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Candidate_Id INT,
    Doc_Type VARCHAR(50),
    Doc_Path VARCHAR(255),
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User int,
    FOREIGN KEY (Candidate_Id) REFERENCES User_Details(id)
);

CREATE TABLE Candidate_Bank_Details (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Candidate_Id INT,
    Name VARCHAR(50),
    Account_Number VARCHAR(20),
    Is_Account_Num_Verified BOOLEAN,
    Ifsc_Code VARCHAR(20),
    Is_Ifsc_Code_Verified BOOLEAN,
    Pan_Number VARCHAR(20),
    Is_Pan_Number_Verified BOOLEAN,
    Aadhaar_Num VARCHAR(20),
    Is_Aadhaar_Num_Verified BOOLEAN,
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User int,
    foreign key (Candidate_Id) references Candidate_Documents(id)
);

CREATE TABLE Candidate_Qualification (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Candidate_Id INT,
    Diploma VARCHAR(50),
    Degree_Name VARCHAR(50),
    Is_Degree_Name_Verified BOOLEAN,
    Employee_Discipline VARCHAR(50),
    Is_Employee_Discipline_Verified BOOLEAN,
    Passing_Year INT,
    Is_Passing_Year_Verified BOOLEAN,
    Aggr_Per DECIMAL(5,2),
    Is_Aggr_Per_Verified BOOLEAN,
    Final_Year_Per DECIMAL(5,2),
    Is_Final_Year_Per_Verified BOOLEAN,
    Training_Institute VARCHAR(100),
    Is_Training_Institute_Verified BOOLEAN,
    Training_Duration_Month INT,
    Is_Training_Duration_Month_Verified BOOLEAN,
    Other_Training VARCHAR(255),
    Is_Other_Training_Verified BOOLEAN,
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User int,
	foreign key (Candidate_Id) references Candidate_Documents(id)
);

CREATE TABLE Company (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    Location VARCHAR(50),
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User INT,
    foreign key (Creator_User) references User_Details(id)
);


CREATE TABLE App_Parameters (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Key_Type VARCHAR(50),
    Key_Value VARCHAR(255),
    Key_Text TEXT,
    Cur_Status VARCHAR(20),
    Last_Upd_User INT,
    Last_Upd_Stamp TIMESTAMP,
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Seq_Num INT,
    Creator_User INT,
    foreign key (Creator_User) references User_Details(id)
);

CREATE TABLE Lab (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(50),
    Address VARCHAR(255),
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User INT,
    foreign key (Creator_User) references User_Details(id)
);

CREATE TABLE Mentor (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Mentor_Type VARCHAR(50),
    Lab_Id INT,
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User INT,
    foreign key (Lab_Id) references Lab(Id) 
);

CREATE TABLE Mentor_Ideation_Map (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Parent_Mentor_Id INT,
    Mentor_Id INT,
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User INT,
    foreign key (Parent_Mentor_Id) references Mentor(Id),
    foreign key (Mentor_Id) references Mentor(Id)
);

CREATE TABLE Mentor_Tech_Stack (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Mentor_Id INT,
    Tech_Stack_Id INT,
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User INT,
    FOREIGN KEY (Mentor_Id) REFERENCES Mentor(Id),
    FOREIGN KEY (Tech_Stack_Id) REFERENCES Mentor(Id)
);

CREATE TABLE Tech_Stack (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Tech_Name VARCHAR(50) NOT NULL,
    Image_Path VARCHAR(255),
    Framework VARCHAR(50),
    Cur_Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User INT,
    foreign key (Creator_User) references User_Details(id)
);

CREATE TABLE Tech_Type (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Type_Name VARCHAR(50) NOT NULL,
    Cur_Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User INT,
    FOREIGN KEY (Creator_User) REFERENCES User_Details(id)
);

CREATE TABLE Maker_Program (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Program_Name VARCHAR(100) NOT NULL,
    Program_Type VARCHAR(50),
    Program_Link VARCHAR(255),
    Tech_Stack_Id INT,
    Tech_Type_Id INT,
    Is_Program_Approved BOOLEAN,
    Description TEXT,
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User int,
    foreign key (Tech_Stack_Id) references Tech_Stack(Id),
    foreign key (Tech_Type_Id) references Tech_Type(Id)
);

CREATE TABLE Lab_Threshold (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Lab_Id INT,
    Lab_Capacity INT,
    Lead_Threshold INT,
    Ideation_Engg_Threshold INT,
    Buddy_Engg_Threshold INT,
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User int,
    FOREIGN KEY (Lab_Id) REFERENCES Lab(id)
);

CREATE TABLE Company_Requirement (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Company_Id INT,
    Requested_Month DATE,
    City VARCHAR(50),
    Is_Doc_Verification BOOLEAN,
    Requirement_Doc_Path VARCHAR(255),
    No_of_Engg INT,
    Tech_Stack_Id INT,
    Tech_Type_Id INT,
    Maker_Program_Id INT,
    Lead_Id INT,
    Ideation_Engg_Id INT,
    Buddy_Engg_Id INT,
    Special_Remark TEXT,
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User int,
    FOREIGN KEY (Company_Id) REFERENCES Company(Id),
    FOREIGN KEY (Tech_Stack_Id) REFERENCES Tech_Stack(id),
    FOREIGN KEY (Tech_Type_Id) REFERENCES Tech_Type(id),
    FOREIGN KEY (Maker_Program_Id) REFERENCES Maker_Program(id),
    FOREIGN KEY (Lead_Id) REFERENCES Mentor(id),
    FOREIGN KEY (Ideation_Engg_Id) REFERENCES Mentor_Ideation_Map(id),
    FOREIGN KEY (Buddy_Engg_Id) REFERENCES Mentor(id)
);

CREATE TABLE Candidate_Stack_Assignment (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Requirement_Id INT,
    Candidate_Id INT,
    Assign_Date DATE,
    Complete_Date DATE,
    Status VARCHAR(20),
    Creator_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_User int,
    FOREIGN KEY (Requirement_Id) REFERENCES Company_Requirement(id),
    FOREIGN KEY (Candidate_Id) REFERENCES User_Details(id)
);

