/*

1. authors_with_book CTE (Common Table Expression):
This CTE combines data from the books, book_authors, and authors tables.
It pulls the book title, revenue, the number of copies sold, and author name, linking these tables using appropriate JOIN conditions (authorID).
Purpose:
To aggregate information about authors and the books they have written.
Extracts relevant data to analyze the relationship between authors and their books in terms of revenue.

Purpose of the Final Query:
Aggregates and summarizes data:
COUNT(name) counts how many books each author has authored.
SUM(Revenue_USD_Millions) sums the revenue from all books authored by each author.
SUM(Copies_Sold_Millions) sums the number of copies sold of books authored by each author.
Groups by author name: Helps identify how many books each author has contributed to and the total revenue they have generated.
Orders results: By num_books in descending order, showing authors with the highest number of books and total revenue from those books first.
Overall Purpose:
To analyze which authors have contributed the most in terms of books and revenue.
Provides insights into the authors with the largest impact based on their book output and the revenue they have generated.

*/

With authors_with_book as (
	Select
	b.title,
	b.Revenue_USD_Millions,
	b.Copies_Sold_Millions,
	a.name
from books b
Join authors a using(authorID)

)

Select
	name,
	count(name) num_books,
	sum(Revenue_USD_Millions) as total_revenue_in_millions,
	sum(Copies_Sold_Millions) as total_sales_in_millions
From authors_with_book
Group by name
Order by num_books Desc



