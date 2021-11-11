/*  Below are selections to make sure that the data has loaded in properly. */

SELECT * FROM "Movies";
SELECT * FROM "Oscars";

/* Joining Tables to create a new one */

CREATE TABLE Combination_Table AS
SELECT m.release_year, m.title, m.genres, m.nominated, m.budget_ranges, 
		m.revenue_ranges, m.runtime_ranges,
		o.film, o.winner
	FROM "Movies" m
	JOIN "Oscars" o
		ON o.film = m.title;
	
/* Dropping film column*/
ALTER TABLE Combination_Table
DROP COLUMN film;

/* Checking Table */
SELECT * FROM Combination_Table;

SELECT genres, AVG(budget)
FROM combination_table
GROUP BY genres;

/*Incase of needing to drop table...*/
DROP TABLE Combination_Table