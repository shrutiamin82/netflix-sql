
SELECT * FROM netflix.netflix_movies;

-- What were the top 10 movies according to IMDB score?
select title,
type,
imdb_score
from netflix.netflix_movies
where imdb_score>=8.0
and type='MOVIE'
order by imdb_score desc
limit 10;

-- What were the top 10 shows according to IMDB score? 
select title,
type
imdb_score
from netflix.netflix_movies
where imdb_score>=8.0
and type='SHOW'
order by imdb_score desc
limit 10;

-- What were the bottom 10 movies according to IMDB score?
select title,
type
imdb_score
from netflix.netflix_movies
where type='MOVIE'
order by imdb_score asc
limit 10;

-- What were the bottom 10 shows according to IMDB score? 
select title,
type
imdb_score
from netflix.netflix_movies
where type='SHOW'
order by imdb_score asc
limit 10;

-- What were the average IMDB and TMDB scores for shows and movies? 
select distinct type,
round(avg(imdb_score),2) As avg_imdb_score,
round(avg(tmdb_score),2) as avg_tmdb_score
from netflix.netflix_movies
group by type;

-- Count of movies and shows in each decade
select concat(floor(release_year/10)*10,'s') as decade,
count(*)as movies_shows_count
from netflix.netflix_movies
where release_year>=1940
group by concat(floor(release_year/10)*10,'s')
order by decade;



-- What were the average IMDB and TMDB scores for each production country?
select distinct production_countries,
round(avg(imdb_score),2) as avg_imdb_score,
round(avg(tmdb_score),2) as avg_tmdb_score
from netflix.netflix_movies
group by production_countries
order by avg_imdb_score desc;


-- What were the average IMDB and TMDB scores for each age certification for shows and movies?
select distinct age_certification,
round(avg(imdb_score),2)as avg_imdb_score,
round(avg(tmdb_score),2) as avg_tmdb_score
from netflix.netflix_movies
group by age_certification
order by avg_imdb_score desc;

-- What were the 5 most common age certifications for movies?
select age_certification,
count(*) as certification_count
from netflix.netflix_movies
where type='MOVIE'
and age_certification !='N/A'
group by age_certification
order by certification_count desc
limit 5;

-- Who were the top 20 actors that appeared the most in movies/shows? 
select distinct name as actor,
count(*) as number_of_appearences
from netflix.netflix_movies
where role='actor'
group by name
order by number_of_appearences desc
limit 20;

-- Calculating the average runtime of movies and TV shows separately
select
'movies' as content_type,
round(avg(runtime),2) as avg_runtime_min
from netflix.netflix_movies
where type="movie"
union all
select
'show' as content_type,
round(avg(runtime),2) as avg_runtime_min
from netflix.netflix_movies
where type="show";

-- Finding the titles and  directors of movies released on or after 2010

select distinct  t.title,c.name as director,
release_year
from netflix.netflix_movies as t
join netflix.netflix_credits as c
on t.id=c.id
where t.type='movie'
and t.release_year>=2010
and c.role='director'
order by release_year desc;


-- Which shows on Netflix have the most seasons?
select title,
sum(seasons) as total_seasons
from netflix.netflix_movies
where type="show"
group by title
order by total_seasons desc
limit 10;


-- Which genres had the most movies? 
select genres,
count(*) as title_count
from netflix.netflix_movies
where type="movie"
group by genres
order by title_count desc
limit 10;

-- Which genres had the most shows? 
select genres,
count(*)as title_count
from netflix.netflix_movies
where type="show"
group by genres
order by title_count desc
limit 10;

-- What were the total number of titles for each year? 
select release_year,
count(*) as title_count
from netflix.netflix_movies
group by release_year
order by release_year desc;

-- what were the top 3 most common genres?
select t.genres,
count(*) as genre_count
from netflix.netflix_movies as t
where t.type="movie"
group by t.genres
order by genre_count desc
limit 3;
