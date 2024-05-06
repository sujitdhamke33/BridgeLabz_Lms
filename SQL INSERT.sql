
insert into User_Details 
(email, first_name, last_name, password, contact_number, verified, creator_stamp, creator_user)
values
('sanjya@gmail.com', 'Sanjay', 'Patil', 'user123', '7687655432', '1', '2018-12-26 12:00:00', '1'
),
('raju@gmail.com', 'Raj', 'Vyas', 'user234', '9887676543', '0', '2019-02-22 12:05:00', '2'
),
('dhruv@gmail.com', 'Dhruv', 'Rathee', 'user345', '9878765432', '1', '2019-02-10 00:00:00', '3'
),
('bhau@gmail.com', 'Joker', 'Bhau', 'user567', '9876324321', '1', '2022-06-22 00:00:00', '3'
),
('yuvi@gmail.com', 'Yuvraj', 'Singh', 'user789', '9876543221', '0', '2023-03-28 00:00:00', '1'
),
('ravi@gmail.com', 'Ravi', 'Ashvin', 'user901', '8987673424', '1', '2024-12-30 00:00:00', '2'
);

insert into Hired_Candidate 
(First_Name,Middle_Name,Last_Name,EmailId,Hired_City,Degree,Hired_Date,Mobile_Number,
Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark,Aggregate_Remark,
Status, Creator_Stamp, Creator_User)
values
('Sanjay', 'N.', 'Patil', 'sanjya@gmail.com', 'Bombay', 'CS', '2018-12-20', '7687655432', 
'415413', 'Mumbai', 'Good', 'Good', 'Good In Technical', 'Good', 'Accepted', 
'2018-12-26 00:00:00', '1'
),
('Raj', 'P.', 'Vyas', 'raju@gmail.com', 'Pune', 'Mechnaical', '2019-02-16', '9887676543', 
'435423', 'Pune', 'Avg', 'Strong', 'Good', 'Avg', 'Accepted', 
'2019-02-22 00:00:00', '2'
),
('Dhruv', 'K.', 'Rathee', 'dhruv@gmail.com', 'Bengalore', 'Civil', '2019-02-05', '9878765432', 
'456321', 'Bengalore', 'Neutral', 'Excellant', 'Avg', 'Good', 'Pending', 
'2019-02-10 00:00:00', '3'
),
('Joker', 'H.', 'Bhau', 'bhau@gmail.com', 'Bombay', 'E&TC', '2019-02-15', '9876324321', 
'432412', 'Mumbai', 'Good Behavioural', 'Medium', 'Good in Technical', 'Overall Good', 'Rejected',
 '2022-06-22 00:00:00', '3'
),
('Yuvraj', 'N.', 'Singh', 'yuvi@gmail.com', 'Pune', 'Electrical', '2019-03-20', '9876543221',
 '7865543232', 'Pune', 'Avg', 'Avg', 'Good Knowledge', 'Avg', 'Rejected', 
 '2023-03-28 00:00:00', '2'
),
('Ravi', 'V.', 'Ashvin', 'ravi@gmail.com', 'Bengalore', 'M.Sc.', '2020-12-24', '8987673424',
 '412345', 'Bengalore', 'Strong', 'Good', 'Good Knowledge', 'Overall Good', 'Accepted', 
 '2024-12-30 00:00:00', '1'
);

insert into Fellowship_Candidate
(Id,Candidate_Id, First_Name, Middle_Name, Last_Name, EmailId, Hired_City, Degree, Hired_Date,
 Mobile_Number, Permanent_Pincode, Hired_Lab, Attitude, Communication_Remark, Knowledge_Remark, 
 Aggregate_Remark, Creator_Stamp, Birth_Date, Is_Birth_Date_Verified, Parent_Name, 
 Parent_Occupation, Parents_Mobile_Number, Parents_Annual_Salary, Local_Address, 
 Permanent_Address, Photo_Path, Joining_Date, Candidate_Status, Personal_Information, 
 Bank_Information, Educational_Information, Document_Status, Remark, Creator_User)
 values
 ('1','1', 'Sanjay', 'N', 'Patil', 'sanjya@gmail.com', 'Bombay', 'CS', '2019-04-10', '7687655432', '415413', 'Bombay', 'Good', 'Good', 'Good In Technical', 'Avg', '2019-02-22 00:00:00', '1994-02-20', '1', 'Nikesh', 'Farmer', '8987654321', '10000.00', 'New Colony, Kerala', 'Kerala', 'Path1', '2018-12-22', 'Accepted', 'Complete Education', 'Bank Of India', 'Complete B.Tech', 'Verified', 'All Up to date', '1'
),
('2','2', 'Raj', 'R', 'Vyas', 'raju@gmail.com', 'Pune', 'Mechnaical', '2019-02-16', '9887676543', '435423', 'Pune', 'Avg', 'Strong', 'Good', 'Avg', '2019-02-22 00:00:00', '1998-05-20', '1', 'Paresh', 'Businessman', '8765322121', '90000.00', 'Happy Colony, Aasam', 'Aasam', 'Path2', '2019-02-10', 'Accepted', 'Pursing B.Tech', 'Baroda Bank', 'still not completed', 'Not verified', 'All good', '2'
),
('3','3', 'Dhruv', 'Y', 'Rathee', 'dhruv@gmail.com', 'Bengalore', 'Civil', '2019-02-05', '9878765432', '456321', 'Bengalore', 'Neutral', 'Excellant', 'Avg', 'Good', '2019-02-10 00:00:00', '1995-04-15', '0', 'KirtiKumar', 'Army', '9890786554', '86700.00', 'Prayagraj, UP', 'UP', 'Path3', '2019-08-15', 'Pending', 'Completed Edauction', 'PNB Bank', 'Just Completed Graduation', 'Verifeid', 'Good', '3'
),
('4','4', 'Joker', 'H', 'Bhau', 'bhau@gmail.com', 'Bombay', 'E&TC', '2022-02-15', '9876324321', '432412', 'Bombay', 'Good Behavioural', 'Medium', 'Good in Technical', 'Overall Good', '2019-06-22 00:00:00', '2000-09-20', '1', 'Harry', 'Working', '7876543221', '78000.00', 'Paris,UK', 'England', 'Path4', '2019-01-24', 'Rejected', 'Completed Graduation in Last Year', 'SBI Bank', 'Completed', 'Verified', 'All up to date', '3'
),
('5','5', 'Yuvraj', 'Q', 'Singh', 'yuvi@gmail.com', 'Pune', 'Electrical', '2023-03-20', '9876543221', '7865543232', 'Pune', 'Avg', 'Avg', 'Good Knowledge', 'Avg', '2019-03-28 00:00:00', '1999-05-20', '1', 'Naresh', 'Salesman', '9056433221', '67000.00', 'Bharintadta, Hariyana', 'Hariyana', 'Path5', '2019-02-22', 'Rejected', 'Complete Eduction', 'HDFC Bank', 'Eductaion Completed', 'Not verified', 'All Good', '2'
),
('6','6', 'Ravi', 'K', 'Ashvin', 'ravi@gmail.com', 'Bengalore', 'M.Sc.', '2024-05-24', '8987673424', '412345', 'Bengalore', 'Strong', 'Good', 'Good Knowledge', 'Overall Good', '2020-12-30 00:00:00', '1999-09-19', '1', 'Vikram', 'Cricketer', '8987673424', '90000.00', 'MarathaHalli, Bengalore', 'Bengalore', 'Path6', '2019-03-20', 'Accepted', 'Completed Education', 'RBI Bank', 'Complted', 'Verified', 'Good', '1'
);

insert into Candidate_Documents
(Id, Candidate_Id, Doc_Type, Doc_Path, Status, Creator_Stamp, Creator_User)
values
('1', '1', 'Resume', 'Doc_Path1', 'Pending', '2019-02-22 00:00:00', '1'
),
('2', '2', 'Cover Letter', 'Doc_Path2', 'Received', '2019-02-22 00:00:00', '2'
),
('3', '3', 'Referenece', 'Doc_Path3', 'Received', '2019-02-10 00:00:00', '3'
),
('4', '4', 'Educational Document', 'Doc_Path4', 'Pending', '2022-06-22 00:00:00', '3'
),
('5', '5', 'Resume', 'Doc_Path5', 'Received', '2023-03-28 00:00:00', '2'
),
('6', '6', 'Cover Letter', 'Doc_Path6', 'Pending', '2024-12-30 00:00:00', '1'
);

insert into Candidate_Bank_Details
(Id, Candidate_Id, Name, Account_Number, Is_Account_Num_Verified, Ifsc_Code, 
Is_Ifsc_Code_Verified, Pan_Number, Is_Pan_Number_Verified, Aadhaar_Num, 
Is_Aadhaar_Num_Verified, Creator_Stamp, Creator_User)
values
('1', '1', 'Sanjay', '1234567890', '1', 'ABCD22456', '1', 'ABCD1234F', '1', '1234-5678-9012-9032', '1', '2019-02-22 00:00:00', '1'
),
('2', '2', 'Raj', '2345678901', '1', 'BCDE123456', '1', 'BDFG2333K', '1', '2345-6789-7654-6543', '1', '2019-02-22 00:00:00', '2'
),
('3', '3', 'Dhruv', '456789012', '0', 'FGHI2345J', '1', 'BDFG6767L', '1', '2344-3444-5667-8997', '1', '2019-02-10 00:00:00', '3'
),
('4', '4', 'Joker', '4567890123', '1', 'BFGC1234K', '0', 'DCVG1567M', '0', '1233-4566-7890-6677', '0', '2022-06-22 00:00:00', '3'
),
('5', '5', 'Yuvraj', '34567890123', '1', 'ADCF123456', '1', 'SDCF5677K', '1', '6677-9080-6778-8990', '1', '2023-03-28 00:00:00', '3'
),
('6', '6', 'Ravi', '567890123', '1', '233456778990', '1', 'BGHI2344J', '1', '7899-9012-3344-55467', '1', '2024-12-30 00:00:00', '1'
);

insert into Candidate_Qualification
(Id, Candidate_Id, Diploma, Degree_Name, Is_Degree_Name_Verified, Employee_Discipline, Is_Employee_Discipline_Verified, Passing_Year, Is_Passing_Year_Verified, Aggr_Per, Is_Aggr_Per_Verified, Final_Year_Per, Is_Final_Year_Per_Verified, Training_Institute, Is_Training_Institute_Verified, Training_Duration_Month, Is_Training_Duration_Month_Verified, 
Other_Training, Is_Other_Training_Verified, Creator_Stamp, Creator_User)
values
('1', '1', 'Diploma in CS', 'CS', '1', 'Software Engineer', '1', '2018', '1', '80.00', '1', '85.00', '1', 'QSpiders', '1', '6', '1', 'Java', '1', '2019-02-22 00:00:00', '1'
),
('2', '2', 'Diploma in Mech', 'Mechanical', '1', 'Design Engineer', '1', '2017', '1', '75.00', '1', '80.00', '1', 'JSpiders', '1', '5', '1', 'Python, SQL', '1', '2019-02-22 00:00:00', '2'
),
('3', '3', 'Diploma in Civil', 'Civil', '1', 'Civil Engineer', '1', '2018', '1', '65.00', '1', '73.00', '1', 'KDN', '1', '3', '1', 'Angular', '1', '2019-02-10 00:00:00', '3'
),
('4', '4', 'Diploma in E&TC', 'E&TC', '1', 'Software UI Designer', '1', '2018', '1', '67.00', '1', '75.00', '1', 'SquareIT', '1', '7', '1', 'Java + Spring Boot', '1', '2022-06-22 00:00:00', '1'
),
('5', '5', 'Diploma in Electrical', 'Electrical', '1', 'Electrical Design Enginner', '1', '2017', '1', '63.00', '1', '72.00', '1', 'ArayanIT', '1', '6', '1', 'HTML+CSS+JS', '1', '2023-03-28 00:00:00', '3'
),
('6', '6', 'B.Sc.', 'M.Sc.', '1', 'Software Developer', '1', '2019', '1', '78.00', '1', '84.00', '1', 'NaviInfoTech', '1', '5', '1', 'React Js', '1', '2024-12-30 00:00:00', '2'
);

insert into Company
(Id, Name, Address, Location, Status, Creator_Stamp, Creator_User)
values
('1', 'TCS', 'Hinjewadi', 'Pune', 'Active', '2019-01-20 00:00:00', '1'
),
('2', 'Wipro', 'Airoli', 'Navi-Mumbai', 'Active', '2019-01-20 00:00:00', '2'
),
('3', 'Capg', 'MarathaHalli', 'Bengalore', 'Active', '2019-02-10 00:00:00', '3'
),
('4', 'Husk Power', 'Kharadi', 'Pune', 'Active', '2022-05-22 00:00:00', '3'
),
('5', 'FUEL', 'PCMC', 'Pimpri', 'Inactive', '2023-02-28 00:00:00', '1'
),
('6', 'Bajaj', 'MarathaHalli', 'Bengalore', 'Active', '2024-11-30 00:00:00', '2'
);

insert into App_Parameters
(Id, Key_Type, Key_Value, Key_Text, Cur_Status, Last_Upd_User, Last_Upd_Stamp, Creator_Stamp, Seq_Num, Creator_User)
values
('1', 'DOC_Status', 'PND', 'Pending', 'ACTV', '1', '2019-02-22 00:00:00', '2019-02-22 00:00:00', '1', '1'
),
('2', 'DOC_STATUS', 'RCEVD', 'Received', 'ACTV', '2', '2019-02-22 00:00:00', '2019-02-22 00:00:00', '2', '2'
),
('3', 'CUR_STATUS', 'ACTV', 'Active', 'ACTV', '3', '2019-02-10 00:00:00', '2019-02-10 00:00:00', '3', '1'
),
('4', 'CUR_STATUS', 'IACTV', 'Inactive', 'ACTV', '4', '2022-06-22 00:00:00', '2022-06-22 00:00:00', '4', '1'
),
('5', 'BATCH_STATUS', 'INPROCESS', 'In Process', 'ACTV', '5', '2023-03-28 00:00:00', '2023-03-28 00:00:00', '5', '1'
),
('6', 'BATCH_STATUS', 'HOLD', 'Hold', 'ACTV', '6', '2024-12-30 00:00:00', '2024-12-30 00:00:00', '6', '2'
);

insert into Lab
(Id, Name, Location, Address, Status, Creator_Stamp, Creator_User)
values
('1', 'Bombay', 'Addess1,Bombay', 'Govandi,Mumbai', 'Active', '2010-02-22 00:00:00', '1'
),
('2', 'Pune', 'Addess2, Pune', 'Eradawane,Pune', 'Inactive', '2012-04-30 00:00:00', '2'
),
('3', 'Bengalore', 'Bengalore', 'MarathaHalli, Bengalore', 'ACTIVE', '2018-12-10 00:00:00', '3'
);

insert into Mentor
(Id, Name, Mentor_Type, Lab_Id, Status, Creator_Stamp, Creator_User)
values
('1', 'Sunil', 'Lead', '1', 'Active', '2015-10-02 00:00:00', '1'
),
('2', 'Venkat', 'Ideation', '2', 'Active', '2016-10-02 00:00:00', '2'
),
('3', 'Pooja', 'Ideation', '3', 'Active', '2017-10-02 00:00:00', '3'
),
('4', 'Aishwarya', 'Buddy', '1', 'Active', '2018-02-10 00:00:00', '3'
),
('5', 'Gunjan', 'Lead', '2', 'Active', '2020-02-20 00:00:00', '1'
),
('6', 'Nagendra', 'Ideation', '3', 'Active', '2018-05-20 00:00:00', '2'
),
('7', 'Roshni', 'Ideation', '1', 'Active', '2017-05-20 00:00:00', '1'
);

insert into Mentor_Ideation_Map
(Id, Parent_Mentor_Id, Mentor_Id, Status, Creator_Stamp, Creator_User)
values
('1', '1', '1', 'Active', '2018-09-22 00:00:00', '2'
),
('2', '2', '1', 'Active', '2016-09-20 00:00:00', '3'
),
('3', '1', '4', 'Active', '2017-08-20 00:00:00', '3'
),
('4', '3', '5', 'Active', '2018-09-25 00:00:00', '4'
),
('5', '3', '7', 'Active', '2019-09-20 00:00:00', '1'
);

insert into Mentor_Tech_Stack
(Id, Mentor_Id, Tech_Stack_Id, Status, Creator_Stamp, Creator_User)
values
('1', '1', '1', 'ACTIVE', '2024-05-05 10:14:12', '1'
),
('2', '1', '2', 'ACTIVE', '2024-05-05 10:14:12', '2'
),
('3', '2', '1', 'ACTIVE', '2024-05-05 10:14:12', '3'
),
('4', '3', '3', 'ACTIVE', '2024-05-05 10:14:12', '3'
),
('5', '4', '4', 'ACTIVE', '2024-05-05 10:14:12', '2'
),
('6', '5', '1', 'ACTIVE', '2024-05-05 10:14:12', '1'
),
('7', '5', '5', 'ACTIVE', '2024-05-05 10:14:12', '2'
),
('8', '6', '2', 'ACTIVE', '2024-05-05 10:14:12', '3'
),
('9', '7', '3', 'ACTIVE', '2024-05-05 10:14:12', '1'
);

insert into Tech_Stack
(Id, Tech_Name, Image_Path, Framework, Cur_Status, Creator_Stamp, Creator_User)
values
('1', 'Java', 'Image1', 'Spring', 'Active', '2019-03-20 00:00:00', '1'
),
('2', 'Mobile', 'Image2', 'Android', 'Active', '2020-03-20 00:00:00', '2'
),
('3', 'PHP', 'Image3', 'Laravel', 'Active', '2018-03-30 00:00:00', '3'
),
('4', 'Python', 'Image4', 'Django', 'Active', '2018-05-20 00:00:00', '1'
),
('5', 'Java', 'Image5', 'React Native', 'Active', '2018-03-10 17:28:32', '2'
),
('6', 'Java', 'Image6', 'Express.js', 'Active', '2020-05-17 17:28:32', '3'
),
('7', '', 'Image7', '', 'Active', '2018-05-20 00:00:00', '3'
),
('8', '', 'Image8', '', 'Active', '2019-09-20 00:00:00', '2'
);

insert into Tech_Type
(Id, Type_Name, Cur_Status, Creator_Stamp, Creator_User)
values
('1', 'FullStack', 'Active', '2024-03-07 17:28:32', '1'
),
('2', 'FullStack', 'Active', '2024-03-07 17:28:32', '2'
),
('3', 'Back-end', 'Active', '2024-03-07 17:28:32', '3'
),
('4', 'Back-end', 'Active', '2024-03-07 17:28:32', '3'
),
('5', 'Front-end', 'Active', '2024-03-07 17:28:32', '2'
),
('6', 'Back-end', 'Active', '2024-03-07 17:28:32', '1'
);

insert into Maker_Program
(Id, Program_Name, Program_Type, Program_Link, Tech_Stack_Id, Tech_Type_Id, Is_Program_Approved, 
Description, Status, Creator_Stamp, Creator_User)
values
('1', 'Java', 'FullStack', 'https://example.com/java_full_stack_program', '1', '1', '1', 'Java full stack development', 'Active', '2024-05-05 11:14:12', '1'
),
('2', 'Java', 'FullStack', 'https://example.com/java_full_stack_program', '1', '1', '1', 'Java with SpringBoot', 'Active', '2024-05-05 11:14:12', '2'
),
('3', 'PHP', 'Back-end', 'https://example.com/java_full_stack_program', '3', '3', '1', 'Angular', 'Active', '2024-05-05 11:14:12', '3'
),
('4', 'Python', 'Back-end', 'https://example.com/java_full_stack_program', '4', '3', '1', 'Java full stack development', 'Active', '2024-05-05 11:14:12', '3'
),
('5', 'Angular', 'Back-end', 'https://example.com/java_full_stack_program', '5', '3', '1', 'Java with SpringBoot', 'Active', '2024-05-05 11:14:12', '2'
),
('6', 'Java', 'Back-end', 'https://example.com/java_full_stack_program', '1', '3', '1', 'Angular', 'Active', '2024-05-05 11:14:12', '1'
);

insert into lab_threshold
(Id, Lab_Id, Lab_Capacity, Lead_Threshold, Ideation_Engg_Threshold, Buddy_Engg_Threshold, 
Status, Creator_Stamp, Creator_User)
values
('1', '1', '50', '10', '8', '6', 'Active', '2024-05-05 10:14:12', '1'
),
('2', '2', '60', '12', '9', '7', 'Active', '2024-05-05 10:14:12', '2'
),
('3', '3', '70', '15', '10', '8', 'Active', '2024-05-05 10:14:12', '3'
),
('4', '3', '55', '11', '8', '6', 'Active', '2024-05-05 10:14:12', '3'
),
('5', '2', '45', '9', '7', '5', 'Active', '2024-05-05 10:14:12', '2'
),
('6', '1', '65', '13', '10', '7', 'Active', '2024-05-05 10:14:12', '1'
);

insert into company_requirement
(Id, Company_Id, Requested_Month, City, Is_Doc_Verification, Requirement_Doc_Path, No_of_Engg,
 Tech_Stack_Id, Tech_Type_Id, Maker_Program_Id, Lead_Id, Ideation_Engg_Id, Buddy_Engg_Id, 
 Special_Remark, Status, Creator_Stamp, Creator_User)
 values
 ('1', '1', '2024-03-01', 'Bombay', '1', 'requirement_doc_1.pdf', '10', '1', '1', '1', '1', '1', '3', 'Good in java', 'Active', '2024-05-05 10:14:12', '1'
),
 ('2', '2', '2023-08-01', 'Banglore', '0', 'requirement_doc_2.pdf', '4', '1', '1', '2', '5', '2', '2', 'Good in java', 'Active', '2024-05-05 10:14:12', '2'
),
('3', '3', '2024-01-01', 'Pune', '1', 'requirement_doc_3.pdf', '6', '3', '3', '3', '6', '3', '4', 'Good in php', 'Active', '2024-05-05 10:14:12', '3'
),
('4', '4', '2022-01-01', 'Bombay', '1', 'requirement_doc_4.pdf', '3', '4', '3', '4', '1', '4', '4', 'good in python', 'Active', '2024-05-05 10:14:12', '3'
),
('5', '5', '2024-03-01', 'Pune', '1', 'requirement_doc_5.pdf', '7', '5', '3', '5', '5', '5', '4', 'Good in angular', 'Active', '2024-05-05 10:14:12', '2'
),
('6', '6', '2024-03-01', 'Banglore', '1', 'requirement_doc_6.pdf', '4', '1', '3', '6', '1', '1', '4', 'Good in java', 'Active', '2024-05-05 10:14:12', '1'
);

insert into candidate_stack_assignment
(Id, Requirement_Id, Candidate_Id, Assign_Date, Complete_Date, Status, Creator_Stamp, Creator_User)
values
('1', '1', '1', '2018-12-22', '2019-04-10', 'Assigned', '2024-03-08 11:00:00', '1'
),
('2', '2', '2', '2019-02-10', '2019-05-16', 'Completed', '2024-03-08 11:05:00', '2'
),
('3', '3', '3', '2019-08-15', '2019-12-19', 'Assigned', '2024-03-08 11:10:00', '3'
),
('4', '4', '4', '2019-01-24', '2019-05-20', 'Assigned', '2024-03-08 11:15:00', '3'
),
('5', '5', '5', '2019-02-22', '2019-06-15', 'Assigned', '2024-03-08 11:20:00', '2'
),
('6', '6', '6', '2019-03-20', '2019-07-20', 'Pending', '2024-03-08 11:25:00', '1'
);