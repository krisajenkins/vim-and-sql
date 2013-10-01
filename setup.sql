DROP TABLE crawler;
DROP TABLE search;
DROP TABLE search_performance;

CREATE TABLE crawler (
	crawler_id INTEGER NOT NULL,
	crawler_name TEXT NOT NULL
);

INSERT INTO crawler VALUES ( 101, 'Google' );
INSERT INTO crawler VALUES ( 202, 'Yahoo' );
INSERT INTO crawler VALUES ( 303, 'Bing' );
INSERT INTO crawler VALUES ( 404, 'Ask' );

CREATE TABLE search (
	keyword_id INTEGER NOT NULL,
	keyword TEXT NOT NULL
);

INSERT INTO search VALUES ( 1, 'red' );
INSERT INTO search VALUES ( 2, 'socks' );
INSERT INTO search VALUES ( 3, 'green' );
INSERT INTO search VALUES ( 4, 'hat' );

CREATE TABLE search_performance (
	date DATE NOT NULL,
	crawler_id INTEGER NOT NULL,
	keyword_id INTEGER NOT NULL,
	hits INTEGER NOT NULL
);
INSERT INTO search_performance VALUES ( '2013-12-20', 101, 1, 12 );
INSERT INTO search_performance VALUES ( '2013-12-21', 101, 2, 433 );
INSERT INTO search_performance VALUES ( '2013-12-21', 303, 2, 33 );
INSERT INTO search_performance VALUES ( '2013-12-22', 404, 2, 56 );
INSERT INTO search_performance VALUES ( '2013-12-23', 101, 3, 45 );
INSERT INTO search_performance VALUES ( '2013-12-24', 202, 4, 23 );
INSERT INTO search_performance VALUES ( '2013-12-25', 303, 4, 14 );
INSERT INTO search_performance VALUES ( '2013-12-25', 101, 1, 233 );
INSERT INTO search_performance VALUES ( '2013-12-26', 101, 2, 123 );
INSERT INTO search_performance VALUES ( '2013-12-27', 202, 3, 123 );
INSERT INTO search_performance VALUES ( '2013-12-28', 303, 4, 24 );
INSERT INTO search_performance VALUES ( '2013-12-29', 404, 2, 32 );
