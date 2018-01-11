/*like queries in SQL*/
/*Author: Muhammad Kamran*/
/* Difference between like, ilike and different percent regex%/

/*Note: xyz is table name 
Suppose we have following 'name' data in table xyz:
mobile, MOBILE, Mobilee, moBile, Mobile*/

/* The following query will return only mobile from above data*/
select * from xyz  
where name like '%mobile%'

/* the following query will return all of the above because it will first convert all name to lower case letters then match*/
select * from xyz  
where lower(name) like '%mobile%'

/*the following query has one percent at the end, that will match those who start with 'mobile'*/
select * from xyz  
where lower(name) like 'mobile%'


/*the following query has one percent at the start, so it will match those who end with 'mobile'. Hence, mobilee will be excluded*/
select * from xyz  
where lower(name) like 'mobile%'

/*ilike or lower difference: There is one very powerful apporach instead of using lower or upper in query. i.e using ilike. ilike matches with given string irrespective of case*/
select * from xyz  
where name ilike '%mobile%' /*it will return all above data*/

/*underscore wild card.. _*/
select * from xyz  
where name like '%__bilee%'
/* the above query will match those entries who have 'bilee' as third and onward character*/


/*Additional: the following will find any values that starts with "a" and ends with "o"*/
select * from xyz  
where name LIKE 'a%o'

/*I have found regex very useful in processing and cleaning geospatial data attributes. Hope, these queries will help beginners GIS personals and others as well. */
