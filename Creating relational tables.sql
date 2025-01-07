-- Create Authors table
CREATE TABLE authors (
    AuthorID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Nationality VARCHAR(100),
    Birth_Year INTEGER
);


-- Create Genre table
CREATE TABLE genres (
    GenreID SERIAL PRIMARY KEY,
    Genre VARCHAR(100) NOT NULL
);

CREATE TABLE books (
    BookID SERIAL PRIMARY KEY,
    AuthorID INTEGER REFERENCES authors(AuthorID),
    GenreID INTEGER REFERENCES genres(GenreID),
    Title VARCHAR(255) NOT NULL,
    Published_Year INTEGER,
    Revenue_USD_Millions DECIMAL(10,2),
    Copies_Sold_Millions INTEGER
);
