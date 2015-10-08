# Table Design Example P

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
1 | 4 | 5 | 2015-02-02 10:01:58 | 2015-02-02 15:30:52
2 | 1 | 1 | 2015-03-01 10:01:58 | 2015-03-01 15:30:52
3 | 2 | 7 | 2015-03-03 10:01:58 | 2015-03-03 15:30:52
4 | 3 | 5 | 2015-04-01 10:01:58 | 2015-04-01 15:30:52
5 | 4 | 1 | 2015-05-01 10:01:58 | 2015-05-01 15:30:52
6 | 1 | 7 | 2015-05-01 10:01:58 | 2015-05-01 15:30:52
7 | 1 | 7 | 2015-09-01 10:01:58 | 2015-09-01 15:30:52
