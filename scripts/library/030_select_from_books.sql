-- retrieve information about books

-- What are all the books?
-- SELECT * FROM books;

-- What are the titles of all the books?
-- SELECT title FROM books;

-- What are the ten oldest books?
-- SELECT title, author FROM books ORDER BY first_published ASC LIMIT 10;

-- What are the ten newest books?
-- SELECT title, author FROM books ORDER BY first_published DESC LIMIT 10;

-- Which authors have more than one book in our books table?
SELECT author, COUNT(*)
FROM books
GROUP BY author
-- HAVING COUNT(*) > 1
ORDER BY COUNT(*)
;
