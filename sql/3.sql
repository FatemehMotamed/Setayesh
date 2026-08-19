
-- update authors set name="sadegh hedayat",email="S@gmail.com" where id=2;
-- delete from authors where id=4;
-- select * from authors;
-- SET SQL_SAFE_UPDATES = 0;
-- delete from test;
-- select * from test;
-- drop table test;
-- alter table authors add column test int; 
-- alter table authors rename column test to Test; 
alter table authors drop column test; 
select * from authors;