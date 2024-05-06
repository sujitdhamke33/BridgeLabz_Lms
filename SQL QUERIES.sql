select * from candidate_stack_assignment;
select * from company_requirement;
select * from lab_threshold;
select * from Maker_Program;
select * from Tech_Type;
select * FROM Tech_Stack;
select * from Mentor_Tech_Stack;
select * from Mentor_Ideation_Map;
select * from Mentor;
select * from Lab;
select * from App_Parameters;
select * from Company;
select * from Candidate_Qualification;
select * from Candidate_Bank_Details;
select * from Candidate_Documents;
select * from Fellowship_Candidate;
select * from Hired_Candidate;
select * from User_Details;

-- 1. find all candidate having java technology 
select a.first_name,a.last_name,ts.Tech_Name from user_details a join Tech_Stack ts
on a.id=ts.Creator_User where ts.Tech_Name='Java';

-- 2- find all mentors and ideations have java technology
SELECT m.Id, m.Name, mim.Id, ts.Tech_Name
FROM Mentor m JOIN Mentor_Ideation_Map mim ON m.Id = mim.Mentor_Id
JOIN Tech_Stack ts ON mim.Id = ts.Id
WHERE ts.Tech_Name = 'Java';

-- 3- find name of candidate which did not assign technology
select a.first_name, a.last_name, ts.Tech_Name from user_details a join tech_Stack ts
on a.id=ts.Creator_User where ts.Tech_Name='';

-- 4- find name of cnadidate which is not submit documents
select a.first_name,a.last_name,c.Status from user_details a 
join candidate_documents c on a.id=c.Candidate_Id where c.Status='Pending';

-- 5- find name of candidate which is not submit bank details (everyone submitted the bank details so no worry in it)
select a.first_name,a.last_name,c.Candidate_Id,cbd.Account_Number from user_details a join candidate_documents c
on a.id=c.Candidate_Id join candidate_bank_details cbd on 
c.id=cbd.Candidate_Id where cbd.Candidate_Id=null;

-- 6-find name of candidates which is joined in dec month
select First_Name,Last_Name,Joining_Date from fellowship_candidate where month(Joining_Date)=12;

-- 7. find name of candidates which is end of course
select f.First_Name,f.Last_Name,f.Joining_Date, cs.Complete_Date
 Days from fellowship_candidate f join 
Candidate_Stack_Assignment cs
on f.id=cs.Candidate_Id where cs.Complete_Date <= DATE_ADD('2019-04-10', Interval 90 day);

-- 8-find name of candidates which is ending date accounding to joining date if joining date is 22-02-2019
select f.First_Name,f.Last_Name,f.Joining_Date,cs.Complete_Date from fellowship_candidate f join Candidate_Stack_Assignment cs
on f.id=cs.Candidate_Id where f.Joining_Date='2019-02-22';

-- 9-find all candidates which is passed out in 2019 year
select u.First_Name,u.Last_Name,cq.Passing_Year,cq.Degree_Name,cq.Employee_Discipline,cq.Other_Training
from User_Details u join Candidate_Qualification cq
on u.id=cq.Candidate_Id where cq.Passing_Year='2019';

-- 10.which technology assign to which candidates which is having MCA background
select ts.Tech_Name from Candidate_Qualification cq join Tech_Stack ts
on cq.Creator_User=ts.Creator_User where cq.Degree_Name='M.Sc.';

-- 11-how many candiates which is having last month in bzl
select count(*) from fellowship_candidate f join 
Candidate_Stack_Assignment cs
on f.id=cs.Candidate_Id where cs.Complete_Date >= DATE_ADD(f.Joining_Date, Interval 90 day);

-- 12-how many week candidate completed in the bridgelabz since joining date candidate id is 2
select Joining_Date,datediff ('2019-04-28', Joining_Date)/7 as Weeks_Complete
from Fellowship_Candidate where id=2;

-- 13-find joining date of candidate if candidate id is 4
select Joining_Date from Fellowship_Candidate where id=4;

-- 14-find joining date of candidate if candidate id is 4
select u.first_name,u.last_name,f.Joining_Date from User_Details u join Fellowship_Candidate f
on u.creator_user=f.creator_user where u.id=4;


-- 15-how many week remaining of candidate in the bridglabz from today if candidate id is 5
select first_name,last_name,datediff(Joining_Date + Interval 12 Week, '2019-05-10') /7 as Remaining_Weeks from Fellowship_Candidate
where id=5;

-- 16-how many days remaining of candidate in the bridgelabz from today if candidate is is 6
select first_name,last_name,Joining_Date,datediff(Joining_Date + Interval 12 Week, '2019-05-20') 
as Remaining_Days 
from Fellowship_Candidate where id=6;

-- 17. find candidates which is deployed
select first_name,last_name from fellowship_candidate f join 
Candidate_Stack_Assignment cs
on f.id=cs.Candidate_Id where cs.Complete_Date >= DATE_ADD(f.Joining_Date, Interval 90 day);

-- 18-find name and other details and name of company which is assign to condidate.
SELECT u.first_name, u.last_name, u.email, u.contact_number, c.Name AS Company_Name, c.Address AS Company_Address, c.Location AS Company_Location
FROM User_Details u
JOIN Company c ON u.creator_user = c.Creator_User;

-- 19. find all condidate and mentors which is related to lab= banglore/mumbai/pune
SELECT DISTINCT u.first_name, u.last_name, m.Name as Mentor_Name, l.Name as Lab_Name, l.Address 
FROM User_Details u 
JOIN mentor m ON u.Creator_User = m.Creator_User 
JOIN Lab l ON u.id = l.id;

-- 20.find buddy mentors and ideation mentor and which technology assign to perticular candidate 
-- if candidate id is 6
SELECT u.first_name, u.last_name, m1.Name AS Buddy_Mentor, m1.Name AS Ideation_Mentor,
m1.Mentor_Type as MentorType, t.Tech_Name AS Technology FROM User_Details u
JOIN mentor m1 ON u.Creator_User = m1.Creator_User
JOIN Tech_Stack t ON u.id = t.ID
WHERE u.ID = 6;






