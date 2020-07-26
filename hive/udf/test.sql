
CREATE table mytable(
fname STRING,
lname STRING);

insert into mytable (fname, lname) values ('RAVI', 'kumar');
insert into mytable (fname, lname) values ('Anish', 'kumar');
insert into mytable (fname, lname) values ('Rakesh', 'jha');
insert into mytable (fname, lname) values ('Vishal', 'kumar');
insert into mytable (fname, lname) values ('Ananya', 'ghosh');

add FILE /opt/apache-hive-3.1.2-bin/udf/test.py;
SELECT TRANSFORM(fname, lname) USING 'python test.py' AS (fname, l_name) FROM mytable;
