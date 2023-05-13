-- actor with the first name Scarlett
select *
from actor
where first_name = "scarlett";

-- actor with last name johansson
select *
 from actor
 where last_name like "johansson";
 
 -- Distinct actors last name are there?
 select distinct last_name
 from actor;
 
 -- which last name appear more than once
 select last_name , 
 count(*) 
 from actor
 group by last_name
 having
 count(last_name)> 1;
 
 -- display first name and last name of all actor
 select first_name , last_name
 from actor;
 
 -- display first name and last name of each actor in a single column in upper case
select upper (concat(first_name, " " , last_name))as Actor_name 
       from actor;
       
-- find the id number, first name and last name of an actor whom you know the first name as joe
select actor_id , first_name , last_name
from actor
where first_name = "joe";

-- actors whose last name contain the letter GEN
select last_name
from actor
where last_name like "GEN";

-- FIND ALL ACTOR WHOSE LAST NAME CONTAIN THE LETTER li, order the row by last name and first name
select last_name
from actor
where last_name like "LI"
order by first_name, last_name;
       
       
 select country_id , country
 fROM country
 where country IN ("Afghanistan" , "china", "bangladesh");

-- list the name of actor as well as hoe many actor have that last name
select last_name , count(*) AS Duplicate
from actor
group by last_name
having count(*)>1;


select last_name , count(*) AS Duplicate
from actor
group by last_name
having count(*)=2;