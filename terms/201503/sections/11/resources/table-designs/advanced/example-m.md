# Table Design Example M

## Tables

### `students`

id | first_name | last_name | net_id | immunized | gender
--- | --- | --- | --- | --- | ---
1 | John | Appleseed | johnnyapp | true | male
2 | John | Smith | jsmitty | true | male
3 | Adam | Smith | adamsmith | true | male
4 | Adam | Smith | asmith | false | male
5 | Mary | Wilson | mwilson | true | female
6 | Sarah | Johnson | sj145 | true | female
7 | Jen | Yi | jyi | true | female
8 | Anna | Jett | amjet42 | true | female

### `bicycles`

id | make | model | color | wheel_size_inches
--- | --- | --- | --- | ---
1 | Cannondale  | Smooth Rider  | blue | 19
2 | Specialized | City Rider    | green  | 23
3 | Trek        | R2-81         | black | 25
4 | Specialized | Mountain Rider | blue | 21

### `rentals`

id | rentable_item_type | rentable_item_id | student_renter_id | rented_at | returned_at
--- | --- | --- | --- | --- | ---
1  | Bicycle | 1 | 8 | 2015-01-01 10:01:58 | 2015-01-01 15:30:52
2  | Bicycle | 2 | 7 | 2015-01-01 10:01:58 | 2015-01-01 15:30:52
3  | Bicycle | 3 | 6 | 2015-01-01 10:01:58 | 2015-01-01 15:30:52
4  | Bicycle | 4 | 5 | 2015-02-02 10:01:58 | 2015-02-02 15:30:52
5  | Bicycle | 4 | 4 | 2015-02-02 10:01:58 | 2015-02-02 15:30:52
6  | Bicycle | 3 | 3 | 2015-02-02 10:01:58 | 2015-02-02 15:30:52
7  | Bicycle | 2 | 2 | 2015-02-28 10:01:58 | 2015-02-28 15:30:52
8  | Bicycle | 1 | 1 | 2015-03-01 10:01:58 | 2015-03-01 15:30:52
9  | Bicycle | 1 | 8 | 2015-03-02 10:01:58 | 2015-03-02 15:30:52
10 | Bicycle | 2 | 7 | 2015-03-03 10:01:58 | 2015-03-03 15:30:52
11 | Bicycle | 2 | 6 | 2015-03-23 10:01:58 | 2015-03-23 15:30:52
12 | Bicycle | 3 | 5 | 2015-04-01 10:01:58 | 2015-04-01 15:30:52
13 | Bicycle | 3 | 4 | 2015-04-11 10:01:58 | 2015-04-11 15:30:52
14 | Bicycle | 4 | 3 | 2015-04-01 10:01:58 | 2015-04-01 15:30:52
15 | Bicycle | 1 | 2 | 2015-04-01 10:01:58 | 2015-04-01 15:30:52
16 | Bicycle | 4 | 1 | 2015-05-01 10:01:58 | 2015-05-01 15:30:52
17 | Bicycle | 1 | 7 | 2015-05-01 10:01:58 | 2015-05-01 15:30:52
18 | Bicycle | 4 | 8 | 2015-08-31 10:01:58 | 2015-08-31 15:30:52
19 | Book | 411 | 1 | 2015-08-31 10:01:58 |
20 | Book | 114 | 2 | 2015-08-31 10:01:58 |
21 | Book | 333 | 3 | 2015-08-31 10:01:58 |
22 | Book | 999 | 4 | 2015-08-31 10:01:58 |
23 | Book | 987 | 1 | 2015-08-31 10:01:58 |
24 | Book | 412 | 2 | 2015-08-31 10:01:58 |
25 | Book | 111 | 3 | 2015-08-31 10:01:58 |
26 | Bicycle | 4 | 8 | 2015-08-31 10:01:58 | 2015-08-31 15:30:52
27 | Bicycle | 1 | 7 | 2015-09-01 10:01:58 | 2015-09-01 15:30:52
