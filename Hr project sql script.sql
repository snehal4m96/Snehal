use `hr_project`;
select * from hr_2;

select count(employeenumber) as Employee_No from hr_1;
select sum(`attrition count`) as Attrition_Count from hr_1;
select avg(`attrition rate`) as Attrition_Rate from hr_1;
select avg(age) as Avg_Age from hr_1;
select count(employeenumber) - sum(`attrition count`) as Active_employee from hr_1;

--- step 1---->Average attrition rate for all department
select department,avg(`attrition rate`) as Avg_Attrition from hr_1
group by department;

--- step 2----> Average Hourly Rate of male research scientist
select Avg(HourlyRate) from hr_1
where gender = "Male" and JobRole = "Research scientist";

--- step 3----->Attrition Rate vs Monthly Income stats
select hr_1.`attrition rate`,hr_1.Department,hr_2.monthlyincome
from hr_1 inner join hr_2 
on hr_1.employeenumber = hr_2.`Employee ID`
group by department;

--- step 4----> Average working year for each department
select hr_1.department,hr_2.totalworkingyears
from hr_1 inner join hr_2 on hr_1.employeenumber = hr_2.`employee id`
group by department;

--- step 5----> Attrition rate Vs Year since last promotion relation
select hr_1.department,hr_1.`attrition rate`,hr_2.yearssincelastpromotion 
from hr_1 inner join hr_2 on hr_1.employeenumber = hr_2.`employee id`
group by department;

