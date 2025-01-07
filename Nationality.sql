/*
This query calculates the total number of books, revenue, and sales by authors grouped by their nationalities. 
It helps identify which nationalities have contributed the most to the total revenue and sales from books
*/

Select
	Nationality,
	count(title) as num_books,
	sum(Revenue_USD_Millions) as total_revenue,
	sum(Copies_Sold_Millions) as total_sales
From books
Join authors using(authorID)
Group by Nationality
Order by total_revenue Desc