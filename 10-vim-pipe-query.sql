SELECT crawler_name, sum(hits) AS total_hits
FROM search_performance s, crawler c
WHERE s.crawler_id = c.crawler_id
--AND c.crawler_name = ''
GROUP BY crawler_name;
