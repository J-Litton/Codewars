
-----------------------------
--------Instructions---------
-----------------------------
/*
 Given film_actor and film tables from the DVD Rental sample database find all movies both Sidney Crowe (actor_id = 105) and Salma Nolte (actor_id = 122) cast in together and order the result set alphabetically.

film schema

 Column     | Type                        | Modifiers
------------+-----------------------------+----------
title       | character varying(255)      | not null
film_id     | smallint                    | not null
film_actor schema

 Column     | Type                        | Modifiers
------------+-----------------------------+----------
actor_id    | smallint                    | not null
film_id     | smallint                    | not null
last_update | timestamp without time zone | not null
actor schema

 Column     | Type                        | Modifiers
------------+-----------------------------+----------
actor_id    | integer                     | not null 
first_name  | character varying(45)       | not null
last_name   | character varying(45)       | not null
last_update | timestamp without time zone | not null
The desired output:

title
-------------
Film Title 1
Film Title 2
...
title - Film title 
*/

-----------------------------


select f.title as title
from film_actor as fa
inner join film as f on fa.film_id = f.film_id
                    and fa.actor_id = 105
where f.film_id in (
       select film_id 
       from film_actor 
       where actor_id = 122
)
