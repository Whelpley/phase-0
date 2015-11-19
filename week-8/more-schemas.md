#header
##header2


*list
*list



# Challenge 8.5

## Release 2

![My new hit RPG](/imgs/characters_magics.png)

This schema is for my new role-playing game, in which there are two tables, representing characters, and their magic powers. While some classes (such as Wizards and Hippies) have magic powers, others (such as Fighters and Bakers) do not. This is a good system to represent with a one-to-one relationship because all characters have a name, a level of experience, and a character class, but not all have magic powers, so those fields are optional.

## Release 4

![Going shopping](/imgs/grocery.png)


##Release 6: Reflection

*What is a one-to-one database?*

This when there are two tables in the database, which share the same primary key.

*When would you use a one-to-one database? (Think generally, not in terms of the example you created).*

They are useful in a few special cases:
*when there is an option set of information that could be attached to the essential data in one table
*when there are too many columns in one table (wrt either legibility or system requirements)
*when you want to distinguish between sensitive and non-sensitive data

*What is a many-to-many database?*

This is when you have three tables in a database: two separate sets of data, and a third one with columns referencing the first two, and providing additional data on intersections of the two sets.

*When would you use a many-to-many database? (Think generally, not in terms of the example you created).*

They are useful when you two separate data sets, and you want to attach additional information to instances of both sets.

*What is confusing about database schemas? What makes sense?*

This all makes sense from a visual perspective - while the Schema Designer has a small learning curve, it provides a clear representation of the data sctructures. For me, this was more dificult to comprehend from the text explanations.