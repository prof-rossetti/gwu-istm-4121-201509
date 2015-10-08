# Table Design Example Q

## Tables

### `bicycles`

id | bicycle_type | make | model | color | wheel_size_inches | student_owner_id
--- | --- | --- | --- | --- | --- | ---
1 | city | Cannondale  | Smooth Rider  | blue | 13 | 5
2 | city | Cannondale  | City Rider    | red | 26 | 2
3 | mountain | Specialized | R-81          | green  | 23 | 8
4 | city | Cannondale  | City Rider Pro | pink | 25 | 8
5 | mountain | Trek        | R2-81         | black | 13 | 1
6 | mountain | Specialized | Mountain Rider | blue | 13 | 6
7 | city | Cannondale  | Smooth Rider  | orange | 26 | 3
8 | city | Cannondale  | City Rider    | blue | 19 | 4
9 | mountain | Trek        | R5-66         | blue | 25 | 7
10 | mountain | Specialized | Mountain Rider | purple | 23 | 7

Instead of writing a SQL statement to join this table to another table:

 + write a SQL statement to list all the mountain bikes, and
 + write a SQL statement to list all the city bikes
