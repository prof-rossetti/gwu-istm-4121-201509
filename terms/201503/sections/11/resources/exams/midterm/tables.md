# Midterm Exam

## Table Design

### `songs`

id | title | artist_name | duration_milliseconds | year_recorded
--- | --- | --- | --- | ---
1 | Gravedigger | The Dave Matthews Band | 280000 | 2003
2 | Marvin's Room | Drake | 560000 | 2011
3 | Ants Marching (Live) | Dave Matthews and Tim Reynolds | 700000 | 2005
4 | Blank Space | Taylor Swift | 231000 | 2014
5 | Baby | Justin Bieber | 201000 | 2010
6 | Where Are U Now | Justin Bieber ft. Skrillex & Diplo | 290000 | 2015
7 | Nina | Ed Sheeran | 220000 | 2014
8 | P.Y.T. (Pretty Young Thing) | Michael Jackson | 238000 | 1982
9 | Bad Blood | Taylor Swift | 197000 | 2014

<hr>

### `plays`

id | song_id | listener_id | started_playing_at | radio_station_id
--- | --- | --- | --- | ---
1 | 9 | 1 | 2015-01-01 10:01:58  | 80
2 | 9 | 4 | 2015-02-09 08:02:23 |
3 | 3 | 1 | 2015-03-25 10:05:58 | 59
4 | 3 | 4 | 2015-04-14 10:01:30 | 3
5 | 2 | 5 | 2015-05-09 05:01:52 |
6 | 8 | 6 | 2015-06-07 10:01:45 | 10009
7 | 9 | 6 | 2015-07-30 02:01:58 | 7
8 | 9 | 4 | 2015-08-23 10:01:33 |

<hr>

### `thumbs`

id | play_id | thumb_type | thumb_pressed_at
--- | --- | --- | ---
1 | 1 | thumbs-up | 2015-01-01 10:02:23
2 | 3 | thumbs-down | 2015-03-25 10:06:03
3 | 5 | thumbs-down | 2015-05-09 05:01:58
4 | 8 | thumbs-up | 2015-08-23 10:01:53


<hr>

### `skips`

id | play_id | skipped_at
--- | --- | ---
1 | 2 | 2015-02-09 08:02:28
2 | 6 | 2015-06-07 10:01:55


<hr>

### `listeners`

id | full_name | email_address
--- | --- | ---
1 | Alyce Howe | alyce.howe@gmail.com
2 | Curt Kshlerin | curt_kshlerin@hotmail.com
3 | Carley Block | block.carley@hotmail.com
4 | Mozelle Aufderhar | aufderhar_mozelle@yahoo.com
5 | Lily Marie | lily.stiedemann@gwu.edu
6 | Felix Luettgen | elijah.luettgen@gwu.edu
7 | Andres the Mighty | andres.beahan@yahoo.com
8 | Rashad J | rash111@yahoo.com

<hr>

### `listener_accounts`

listener_id | cc_holder_name | cc_number | cc_exp_month | cc_exp_year | cc_zipcode | invoice_usd_per_day
--- | --- | --- | --- | --- | --- | ---
1 | Alyce Howe        | 111122222233333 | 01 | 2016 | 06405 | 0.00
2 | Curt Kshlerin     | 111122222233334 | 12 | 2020 | 20052 | 0.40
3 | Carley Block      | 88822222233335  | 11 | 2017 | 20037 | 0.40
4 | Mozelle Aufderhar | 111122222233336 | 10 | 2018 | 20001 | 0.00
5 | Lily M Stiedemann | 88822222233337  | 08 | 2015 | 20052 | 0.40
6 | Elijah Luettgen   | 111122222233338 | 03 | 2016 | 20037 | 0.00
7 | Andres Beahan     | 88822222233339  | 01 | 2015 | 20001 | 0.20
8 | Rashad Jones      | 111122222233340 | 07 | 2016 | 20052 | 0.20

<hr>
