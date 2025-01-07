-- Identify top-selling genres:
-- The query identifies which genres have sold the most copies by summing the Copies_Sold_Millions for each genre.
Select
	sum(b.Copies_Sold_Millions) as total_sales,
	g.Genre
From books b
Join genres g using(genreID)
Group by Genre
Order by total_sales Desc
