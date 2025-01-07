-- Authors data
INSERT INTO authors (AuthorID, Name, Nationality, Birth_Year) VALUES
(1, 'Miguel de Cervantes', 'Spanish', 1547),
(2, 'Charles Dickens', 'British', 1812),
(3, 'J.R.R. Tolkien', 'British', 1892),
(4, 'Antoine de Saint-Exupéry', 'French', 1900),
(5, 'J.K. Rowling', 'British', 1965),
(6, 'Agatha Christie', 'British', 1890),
(7, 'Cao Xueqin', 'Chinese', 1715),
(8, 'C.S. Lewis', 'British', 1898),
(9, 'H. Rider Haggard', 'British', 1856),
(10, 'Dan Brown', 'American', 1964),
(11, 'Paulo Coelho', 'Brazilian', 1947),
(12, 'J.D. Salinger', 'American', 1919),
(13, 'Eric Carle', 'American', 1929);

-- Insert genres
INSERT INTO genres (GenreID, Genre) VALUES
(1, 'Fantasy'),
(2, 'Historical Fiction'),
(3, 'Adventure'),
(4, 'Literary Fiction'),
(5, 'Mystery'),
(6, 'Children''s Literature'),
(7, 'Classic');

-- Books data (assigning primary genre for each book)
INSERT INTO books (BookID, AuthorID, GenreID, Title, Published_Year, Revenue_USD_Millions, Copies_Sold_Millions) VALUES
(1, 1, 3, 'Don Quixote', 1605, 7500, 500),
(2, 2, 2, 'A Tale of Two Cities', 1859, 3000, 200),
(3, 3, 1, 'The Lord of the Rings', 1954, 2250, 150),
(4, 4, 6, 'The Little Prince', 1943, 2100, 140),
(5, 5, 1, 'Harry Potter and the Philosopher''s Stone', 1997, 1800, 120),
(6, 3, 1, 'The Hobbit', 1937, 1650, 110),
(7, 6, 5, 'And Then There Were None', 1939, 1500, 100),
(8, 7, 4, 'Dream of the Red Chamber', 1791, 1500, 100),
(9, 8, 1, 'The Lion, the Witch and the Wardrobe', 1950, 1275, 85),
(10, 9, 3, 'She: A History of Adventure', 1887, 1245, 83),
(11, 10, 3, 'The Da Vinci Code', 2003, 1200, 80),
(12, 5, 1, 'Harry Potter and the Order of the Phoenix', 2003, 975, 65),
(13, 5, 1, 'Harry Potter and the Half-Blood Prince', 2005, 975, 65),
(14, 5, 1, 'Harry Potter and the Deathly Hallows', 2007, 975, 65),
(15, 12, 4, 'The Catcher in the Rye', 1951, 975, 65),
(16, 11, 4, 'The Alchemist', 1988, 975, 65),
(17, 13, 6, 'The Very Hungry Caterpillar', 1969, 900, 60),
(18, 5, 1, 'Harry Potter and the Chamber of Secrets', 1998, 900, 60),
(19, 5, 1, 'Harry Potter and the Goblet of Fire', 2000, 900, 60),
(20, 5, 1, 'Harry Potter and the Prisoner of Azkaban', 1999, 900, 60);