 #standardSQL 
 SELECT COUNT(DISTINCT author.email) 
      AS num_authors, REGEXP_EXTRACT(repo_name[ORDINAL(1)], r"([^/]+)$") 
      AS repo 
      FROM `bigquery-public-data.github_repos.commits` 
      GROUP BY repo 
      ORDER BY num_authors 
      DESC LIMIT 1000
