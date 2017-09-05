-- These are the commands I typed pertaining to the assignment.

createdb todolist
psql todolist

create table todos (
todolist(# id serial primary key,
todolist(# title varchar(255) not null,
todolist(# details varchar(100000) null,
todolist(# priority integer not null default '1',
todolist(# created_at timestamp not null,
todolist(# completed_at timestamp null
todolist(# );

insert into todos (title, details, priority, created_at) values ('clean_home', 'needs extra time', 2, now());
insert into todos (title, details, priority, created_at) values ('laundry', '', 3, now());
insert into todos (title, created_at) values ('replace_paper_towels', now());
insert into todos (title, created_at, completed_at) values ('arrange_bookshelf', now(), now());
insert into todos (title, details, priority, created_at) values ('feed_pet', 'food in the closet', 2, now());

select title from todos where completed_at is null;

select title, details, priority from todos where priority > 1;

update todos set completed_at = now() where id = 3;

DELETE FROM todos WHERE completed_at IS NOT NULL;
