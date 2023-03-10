SELECT submission_date AS date,
       COUNT(DISTINCT hacker_id) AS num_unique_hackers,
       MIN(hacker_id) AS hacker_id,
       hackers.name
FROM submissions
JOIN hackers ON submissions.hacker_id = hackers.hacker_id
WHERE submission_date BETWEEN '2016-03-01' AND '2016-03-15'
GROUP BY submission_date
HAVING COUNT(DISTINCT hacker_id) > 0
ORDER BY submission_date;