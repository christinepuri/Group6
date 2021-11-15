/*  Below are selections to make sure that the data has loaded in properly. */

SELECT * FROM "Movies";
SELECT * FROM "Oscars";

/* Joining Tables to create a new one */

CREATE TABLE Combination_Table AS
SELECT m.release_year, m.title, m.genres, m.nominated, m.budget_ranges, 
		m.revenue_ranges, m.runtime_ranges, m.budget, m.revenue, m.runtime,
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







/* Combo table V2 -- This table is not used and was only to make sure that the other table is the optimal version of the combo table */
CREATE TABLE Combination_Table_V2 AS
SELECT m.release_year, m.title, m.genres, m.nominated, m.budget_ranges, 
		m.revenue_ranges, m.runtime_ranges, m.budget, m.revenue, m.runtime,
		o.film, o.winner , o.category
	FROM "Oscars" o
	LEFT JOIN "Movies" m
        ON m.title = o.film;
		
	ALTER TABLE Combination_Table_V2
	DROP COLUMN film;
	
	
/* Checking Table */
SELECT * FROM Combination_Table_V2;