-- except is based on all the columns instead of just pk
--------q1
SELECT * FROM top_rated_films
not in 
SELECT * FROM most_popular_films;

-- "not in" can be specific to a col instead of a full row
---------q2
SELECT * FROM top_rated_films where title not in (select title from most_popular_films);
