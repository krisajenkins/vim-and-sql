SELECT now(), sp.date, sp.crawler_id, sp.keyword_id, sp.hits
FROM search_performance sp
ORDER BY date DESC;

-- R
-- <Leader>sh
