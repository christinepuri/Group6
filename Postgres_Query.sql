/*  Below are selections to make sure that the data has loaded in properly. */

SELECT * FROM "Movies";
SELECT * FROM "Oscars";

/* Joining Tables to create a new one */

CREATE TABLE Combination_Table AS
SELECT m.budget, m.release_year, m.revenue, m.runtime, m.title, m.genres,
		o.film, o.winner, o.category
	FROM "Movies" m
	JOIN "Oscars" o
		ON m.title = o.film;
		
/* Checking Table */
SELECT * FROM Combination_Table;




  
  