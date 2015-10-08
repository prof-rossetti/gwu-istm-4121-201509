# Table Design Example D

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

### `bicycles_students`

bicycle_id | student_id
--- | ---
1 | 8
1 | 6
1 | 4
1 | 2
2 | 8
2 | 6
2 | 5
2 | 3
