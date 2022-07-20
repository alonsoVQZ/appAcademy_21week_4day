----------
-- Step 0 - Create a Query 
----------
-- Query: Select all cats that have a toy with an id of 5

    -- Your code here
SELECT cats.name FROM cat_toys
JOIN cats ON (cat_toys.cat_id = cats.id)
JOIN toys ON (cat_toys.toy_id = toys.id)
WHERE cat_toys.toy_id = 5;

-- Paste your results below (as a comment):
-- Run Time: real 0.000 user 0.000604 sys 0.000000



----------
-- Step 1 - Analyze the Query
----------
-- Query:

EXPLAIN QUERY PLAN SELECT cats.name FROM cat_toys
JOIN cats ON (cat_toys.cat_id = cats.id)
JOIN toys ON (cat_toys.toy_id = toys.id)
WHERE cat_toys.toy_id = 5;



-- Paste your results below (as a comment):
-- QUERY PLAN
|--SEARCH TABLE toys USING INTEGER PRIMARY KEY (rowid=?)
|--SCAN TABLE cat_toys
`--SEARCH TABLE cats USING INTEGER PRIMARY KEY (rowid=?)
-- Run Time: real 0.001 user 0.000052 sys 0.000000

-- What do your results mean?

    -- Was this a SEARCH or SCAN?
-- Both Actions

    -- What does that mean?
--  Searching for every record, and Scanning a data point that matches the Query.


----------
-- Step 2 - Time the Query to get a baseline
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):




----------
-- Step 3 - Add an index and analyze how the query is executing
----------

-- Create index:

    -- Your code here

-- Analyze Query:
    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:

    -- Is the new index being applied in this query?




----------
-- Step 4 - Re-time the query using the new index
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:
    -- Are you still getting the correct query results?


    -- Did the execution time improve (decrease)?


    -- Do you see any other opportunities for making this query more efficient?


---------------------------------
-- Notes From Further Exploration
---------------------------------