-- ============================================
-- Day 1: SELECT, WHERE, ORDER BY, LIMIT
-- Date: October 1, 2026
-- What I learned: Basic SQL queries
-- ============================================

-- 1. SELECT all columns from a table
-- The * means "everything"
SELECT * FROM movies;

-- 2. SELECT specific columns only
-- You don't always need all columns — pick what you need
SELECT title, year FROM movies;

-- 3. WHERE: filter rows based on a condition
-- Only movies from 2010
SELECT * FROM movies WHERE year = 2010;

-- 4. Comparison operators: >, <, >=, <=, !=
-- Movies after year 2000
SELECT * FROM movies WHERE year > 2000;

-- Movies NOT directed by John Lasseter
SELECT * FROM movies WHERE director != 'John Lasseter';

-- 5. BETWEEN: range filter (INCLUSIVE on both ends)
-- Movies between 2000 and 2010 (includes 2000 and 2010)
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;

-- 6. IN: match against a list of values
-- Shorthand for multiple OR conditions
SELECT * FROM movies WHERE year IN (2000, 2005, 2010);

-- 7. LIKE: pattern matching
-- % matches any sequence of characters (including none)
-- 'Toy%' matches 'Toy Story', 'Toy Story 2', 'Toybox', etc.
SELECT * FROM movies WHERE title LIKE '%Toy%';

-- 8. DISTINCT: return only unique values (no duplicates)
SELECT DISTINCT director FROM movies;

-- 9. ORDER BY: sort results
-- ASC = ascending (smallest first) — this is the default
-- DESC = descending (largest first)
SELECT * FROM movies ORDER BY year DESC;

-- 10. LIMIT: show only first N rows
SELECT * FROM movies ORDER BY year DESC LIMIT 5;

-- 11. OFFSET: skip rows (useful for pagination)
-- Skip first 5 rows, then show next 5
SELECT * FROM movies ORDER BY year LIMIT 5 OFFSET 5;

-- 12. Combining everything:
-- "Top 3 movies after 2005, sorted by year, newest first"
SELECT title, year
FROM movies
WHERE year > 2005
ORDER BY year DESC
LIMIT 3;