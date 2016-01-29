# DBC 8.5

## Release 2 # One to one Schema:

![one2one](../imgs/one2one.png "one2one")

In the above diagram, I take songs on itunes as an example to demostrate the one-to-one relationship. Information of Songs on itunes can be stored inside one spreadsheet if it is big enough. As people might not interested at knowing the lyrics, popularity and its genre before listening to the song. Those information seems to be useless to some people. So it would be a good idea to break the bulky songs table down into more than one sheet. And since people might be interested if the song is written by a talented artist or the high rating by public on the social media. Therefore, some important information will stay on the songs table while other less important details will be moved to the new table called Song Details.


## Release 4 # Many to many Schema:

![many2many](../imgs/many2many.png "many2many")


## Release 6 # Reflection:


### What is a one-to-one database?

One-to-one relationships occur when there is exactly one record in the first table that
corresponds to exactly one record in the related table.



### When would you use a one-to-one database? (Think generally, not in terms of the example you created).

I would use a one-to-one database for the events that one collection of data is indeed the
details information for another set of data.


### What is a many-to-many database?

Many-tomany database refers to the relationship between two entities, says, A and B in which
A may contain a parent record for which there are many children in B and vice versa.


### When would you use a many-to-many database? (Think generally, not in terms of the example you created).

I would use many-to-many database when there are several set of data and when I need to relate
each row in one table to many rows in another table, and vice versa.


### What is confusing about database schemas? What makes sense?

It was hard to explain these relationship between tables without using examples. I found these
hardto apply at the moment.

