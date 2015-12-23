# Table Design Example N

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

id | bicycle_id | student_renter_id | rented_at | returned_at
--- | --- | --- | --- | ---
1 | 1 | 8 | 2015-01-01 10:01:58 | 2015-01-01 15:30:52
2 | 2 | 7 | 2015-01-01 10:01:58 | 2015-01-01 15:30:52
3 | 3 | 6 | 2015-01-01 10:01:58 | 2015-01-01 15:30:52
4 | 4 | 5 | 2015-02-02 10:01:58 | 2015-02-02 15:30:52
5 | 4 | 4 | 2015-02-02 10:01:58 | 2015-02-02 15:30:52
6 | 3 | 3 | 2015-02-02 10:01:58 | 2015-02-02 15:30:52
7 | 2 | 2 | 2015-02-28 10:01:58 | 2015-02-28 15:30:52
8 | 1 | 1 | 2015-03-01 10:01:58 | 2015-03-01 15:30:52
9 | 1 | 8 | 2015-03-02 10:01:58 | 2015-03-02 15:30:52
10 | 2 | 7 | 2015-03-03 10:01:58 | 2015-03-03 15:30:52
11 | 2 | 6 | 2015-03-23 10:01:58 | 2015-03-23 15:30:52
12 | 3 | 5 | 2015-04-01 10:01:58 | 2015-04-01 15:30:52
13 | 3 | 4 | 2015-04-11 10:01:58 | 2015-04-11 15:30:52
14 | 4 | 3 | 2015-04-01 10:01:58 | 2015-04-01 15:30:52
15 | 1 | 2 | 2015-04-01 10:01:58 | 2015-04-01 15:30:52
16 | 4 | 1 | 2015-05-01 10:01:58 | 2015-05-01 15:30:52
17 | 1 | 7 | 2015-05-01 10:01:58 | 2015-05-01 15:30:52
18 | 4 | 8 | 2015-08-31 10:01:58 | 2015-08-31 15:30:52
19 | 1 | 7 | 2015-09-01 10:01:58 | 2015-09-01 15:30:52
