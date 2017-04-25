-- What are all the records?
SELECT * FROM books;

-- What are the first ten records?
SELECT * FROM books LIMIT 10;

-- What is the book with the ID of 42?
SELECT * FROM books
  WHERE id=42;

-- What are Robert Heinlein's books?
SELECT * FROM books
  WHERE author ILIKE '%heinlein%';

-- What are millennial books?
SELECT * FROM books
  WHERE first_published >= 2000
  AND first_published < 2001;

-- Which authors have more than one book?
-- How many do they have?
-- Sort by descending quantity.
SELECT author, COUNT(*)
FROM books
GROUP BY author
HAVING COUNT(*) > 1
;
