select location, avg(employees)
 from startups
 group by location
 having avg(employees)>500; 
