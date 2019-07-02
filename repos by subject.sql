 #standardSQL
SELECT subject, COUNT(*) AS num_duplicates
FROM `bigquery-public-data.github_repos.commits`
GROUP BY subject
ORDER BY num_duplicates DESC LIMIT 100
