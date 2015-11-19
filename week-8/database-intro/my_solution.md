Challenge 8.4 -

Release 5

1) SELECT * FROM states;
2) SELECT * FROM regions;
3) SELECT state_name, population FROM states;
4) SELECT state_name, population FROM states ORDER BY population DESC;
5) SELECT state_name FROM states WHERE region_id = 7;
6) SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
7) SELECT state_name FROM states WHERE population >= 1000000 AND population <= 1500000;
8) SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9) SELECT region_name FROM regions WHERE region_name LIKE "%Central%";
10) SELECT regions.region_name, states.state_name FROM regions INNER JOIN states ON states.region_id = regions.id ORDER BY states.region_id ASC;

Release 6:

<img scr="Outfit_schema.png" alt="A very useful schema">

Release 7: Reflection

What are databases for?

-They are systems for the storage, retrieval, and management of information.

What is a one-to-many relationship?

-It is when two tables in a database are linked such that a the values in a certain column in one table are singular (only one of each exists in that table), but there is a related table with the same data type that has multiple (or one, or none) instances of each instance from the first table.

What is a primary key? What is a foreign key? How can you determine which is which?

-A primary key is a unique quality for a row in a table; one will notice that only one of each key may exist per table. A foreign key is a data set that points to a primary key in another table, and you can see that there can be many instances on a table. The foreign key is usually named in the pattern of "othertable_id"

How can you select information out of a SQL database? What are some general guidelines for that?

When in an SQL shell for the database, you may type commands to select information, in the following format:
-Start with SELECT, followed by the columns you want to show (* for all)
-then FROM, followed by the tables you are selecting from
-then optional filters such as WHEN,
-then display settings such as ORDER BY,
-finishing with a semicolon to end the statement of request.