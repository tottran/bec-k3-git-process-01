select 
    case when g.grade >= 8 then s.name else NULL end as names
    ,g.grade
    ,s.marks
from students s
join grades g
    on s.marks between g.min_mark and g.max_mark
order by g.grade desc, names, s.marks