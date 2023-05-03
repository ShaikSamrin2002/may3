select * from manager;

-- finding the 1st largest salary from manager table
select name,salary from manager order by salary desc limit 0,1;

-- finding the 2nd largest salary from manager table
select name,salary from manager order by salary desc limit 1,1;

-- finding the 3rd largest salary from manager table
select name,salary from manager order by salary desc limit 2,1;

-- finding the 4th largest salary from manager table
select name,salary from manager order by salary desc limit 3,1;

-- finding the 3rd largest salary from manager table
select name,salary,age from manager order by salary desc limit 2,1;

-- finding the 3rd smallest salary from manager table
select name,salary from manager order by salary asc limit 2,1;

