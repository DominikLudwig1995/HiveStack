CREATE table mytable(
fname STRING,
lname STRING);

select  * from mytable;
drop table mytable;

insert into mytable  values ('RAVI', 'kumar');
insert into mytable  values ('Anish', 'kumar');
insert into mytable  values ("Rakesh", "jha");
insert into mytable values ('Vishal', 'kumar');
insert into default.mytable values ('Ananya', 'ghosh');
insert into default.mytable values ('Ananya', 'ghosh');

add FILE /opt/apache-hive-3.1.2-bin/udf/test.py;
SELECT TRANSFORM(fname, lname) USING 'python test.py' AS (fname, l_name) FROM mytable;
