SELECT CT.contest_id, CT.hacker_id, CT.name, SUM(TS), SUM(TAS), SUM(TV), SUM(TUV)
FROM Contests CT
left JOIN Colleges CL ON CT.contest_id = CL.contest_id
left JOIN Challenges CH ON CH.college_id = CL.college_id
left JOIN ( SELECT challenge_id, SUM(total_views) TV, SUM(total_unique_views) TUV 
            FROM View_Stats 
            GROUP BY challenge_id) VS ON CH.challenge_id = VS.challenge_id
left JOIN (SELECT challenge_id, SUM(total_submissions) TS, SUM(total_accepted_submissions) TAS 
           FROM Submission_Stats 
           GROUP BY challenge_id) SS ON CH.challenge_id = SS.challenge_id
GROUP BY CT.contest_id, CT.hacker_id, CT.name
Having SUM(TS) > 0 and SUM(TAS) > 0 and SUM(TV) > 0 and SUM(TUV) > 0
ORDER BY CT.contest_id