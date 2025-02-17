use sakila;

select * from actor
  where actor_id > 2 or
    first_name = 'JOHNNY';
    
