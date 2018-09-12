Select h.hacker_id,h.name, IQ.SUMSCORE from (
Select Q.hacker_id as HID, Sum(Q.Score) as SUMSCORE from 
(
Select  s.hacker_id as hacker_id, s.challenge_id as challenge_id, Max(s.score) as Score from Submissions s where s.score<>0
group by s.hacker_id, s.challenge_id
)as Q
group by Q.hacker_id) as IQ 
join Hackers h on h.hacker_id = IQ.HID
where IQ.SUMSCORE<>0 order by IQ.SUMSCORE desc, h.hacker_id asc
