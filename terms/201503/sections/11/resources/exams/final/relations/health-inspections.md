# Final Exam

## Relation #2: Health Inspection Scores

<hr>

### `businesses` table

id | name | address
--- | --- | ---
06FOOD-6666 | Starbucks | Eye Street
07FOOD-7777 | Starbucks | K Street
08FOOD-8888 | Dunkin Donuts | 22nd Street
09FOOD-9999 | Dolcezza | 14th Street

<hr>

### `inspections` table

id | business_id | date | score | type
--- | --- | --- | --- | ---
1 | 07FOOD-7777 | 2015-01-01 | 50 | routine
2 | 08FOOD-8888 | 2015-01-01 | 50 | routine
3 | 09FOOD-9999 | 2015-01-01 | 100 | routine
4 | 07FOOD-7777 | 2015-04-04 | 75 | follow-up
5 | 08FOOD-8888 | 2015-04-04 | 75 | follow-up

<hr>

### `violations` table

id | business_id | date | code | description
--- | --- | --- | --- | ---
101 | 07FOOD-7777 | 2015-01-01 | RR | rats
102 | 07FOOD-7777 | 2015-01-01 | OO | slight odor
103 | 08FOOD-8888 | 2015-01-01 | RR | lots of rats all over the basement
104 | 08FOOD-8888 | 2015-01-01 | OO | odor
105 | 07FOOD-7777 | 2015-04-04 | RR | rats
106 | 08FOOD-8888 | 2015-04-04 | RR | still some rats in the basement

<hr>

Adapted from the [LIVES Data Standard](http://www.yelp.com/healthscores).
