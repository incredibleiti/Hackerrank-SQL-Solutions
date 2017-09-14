Select Maxearnings, Count(Maxearnings) from
(
(Select name, salary,months, (salary * months) as Maxearnings from Employee)  t
inner join 
(Select Max(salary * months) as M from Employee)  e
on e.M = t.Maxearnings) 
Group By Maxearnings
