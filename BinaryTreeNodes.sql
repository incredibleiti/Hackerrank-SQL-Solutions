Select t.N, 
(Case WHEN t.P is null THEN 'Root'
    WHEN (Select Count(*) from BST tn where tn.P=t.N) > 0 THEN 'Inner'
    ELSE 'Leaf' END
     )
     from
BST t
order by t.N;
