select  s.start_date, min(e.end_date)
from (
select a.start_date
from projects A
    left join projects t
    on a.start_date = t.end_date
where t.end_date is null
)s 
join (
select a.end_date
from projects A
    left join projects t
    on a.end_date = t.start_date
where t.start_date is null
)e
on s.start_date < e.end_date
group by s.start_date
order by datediff(dd,s.start_date, min(e.end_date)), s.start_date
