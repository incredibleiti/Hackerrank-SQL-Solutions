Select t.N, 
(Case WHEN t.P is null THEN 'Root'
    WHEN (Select Count(*) from BST tn where tn.P=t.N) > 0 THEN 'Inner'
    ELSE 'Leaf' END
     )
     from
BST t
order by t.N;


SELECT N, IF(P IS NULL,'Root',IF((SELECT COUNT(*) FROM BST WHERE P=B.N)>0,'Inner','Leaf')) FROM BST AS B ORDER BY N
