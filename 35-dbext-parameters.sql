SELECT c.crawler_name, s.keyword, sum(sp.hits)
FROM search_performance sp
  JOIN crawler c USING (crawler_id)
  JOIN search s USING (keyword_id)
GROUP BY c.crawler_name, s.keyword;
