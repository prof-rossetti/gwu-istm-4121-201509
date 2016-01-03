/* IMPORT CSV FILES */

/*


CREATE TABLE `students` (
  `admit_term` varchar(255) DEFAULT NULL,
  `admit_type` varchar(255) DEFAULT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `catalog_term` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `credits` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `grad_class` varchar(255) DEFAULT NULL,
  `gwid` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `majors` text,
  `minors` text,
  `notification_expires` varchar(255) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `record_number` int(11) NOT NULL DEFAULT '0',
  `registration_number` int(11) DEFAULT NULL,
  `registration_status` varchar(255) DEFAULT NULL,
  `waitlist_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`record_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `responses` (
  `ts` varchar(255) DEFAULT NULL,
  `net_id` varchar(255) DEFAULT NULL,
  `student_id` int(11) NOT NULL DEFAULT '0',
  `hometown` varchar(255) DEFAULT NULL,
  `gh_username` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `grad_class` varchar(255) DEFAULT NULL,
  `majors` varchar(255) DEFAULT NULL,
  `scheduling` varchar(255) DEFAULT NULL,
  `objectives` text,
  `experience` text,
  `interests` text,
  `pc` varchar(255) DEFAULT NULL,
  `pc_os` varchar(255) DEFAULT NULL,
  `os_windows` varchar(255) DEFAULT NULL,
  `os_mac` varchar(255) DEFAULT NULL,
  `os_ios` varchar(255) DEFAULT NULL,
  `os_android` varchar(255) DEFAULT NULL,
  `soft_word` varchar(255) DEFAULT NULL,
  `soft_gdocs` varchar(255) DEFAULT NULL,
  `soft_excel` varchar(255) DEFAULT NULL,
  `soft_gsheets` varchar(255) DEFAULT NULL,
  `soft_ppt` varchar(255) DEFAULT NULL,
  `soft_gslides` varchar(255) DEFAULT NULL,
  `soft_visio` varchar(255) DEFAULT NULL,
  `soft_lucidchart` varchar(255) DEFAULT NULL,
  `dbms_access` varchar(255) DEFAULT NULL,
  `comms_email` varchar(255) DEFAULT NULL,
  `comms_bboard` varchar(255) DEFAULT NULL,
  `comms_gchat` varchar(255) DEFAULT NULL,
  `comms_slack` varchar(255) DEFAULT NULL,
  `data_csv` varchar(255) DEFAULT NULL,
  `data_json` varchar(255) DEFAULT NULL,
  `lang_sql` varchar(255) DEFAULT NULL,
  `data_xml` varchar(255) DEFAULT NULL,
  `lang_html` varchar(255) DEFAULT NULL,
  `lang_css` varchar(255) DEFAULT NULL,
  `lang_js` varchar(255) DEFAULT NULL,
  `lang_java` varchar(255) DEFAULT NULL,
  `lang_php` varchar(255) DEFAULT NULL,
  `lang_rb` varchar(255) DEFAULT NULL,
  `lang_py` varchar(255) DEFAULT NULL,
  `lang_cpp` varchar(255) DEFAULT NULL,
  `lang_vb` varchar(255) DEFAULT NULL,
  `lang_csh` varchar(255) DEFAULT NULL,
  `lang_c` varchar(255) DEFAULT NULL,
  `lang_objc` varchar(255) DEFAULT NULL,
  `lang_perl` varchar(255) DEFAULT NULL,
  `lang_r` varchar(255) DEFAULT NULL,
  `lang_dotnet` varchar(255) DEFAULT NULL,
  `comms_hipchat` varchar(255) DEFAULT NULL,
  `comms_irc` varchar(255) DEFAULT NULL,
  `tools_aws` varchar(255) DEFAULT NULL,
  `tools_gh` varchar(255) DEFAULT NULL,
  `tools_bitbucket` varchar(255) DEFAULT NULL,
  `website_prior` varchar(255) DEFAULT NULL,
  `cross_class_comf` varchar(255) DEFAULT NULL,
  `meetup_comf` varchar(255) DEFAULT NULL,
  `dbms_oracle` varchar(255) DEFAULT NULL,
  `dbms_microsoft` varchar(255) DEFAULT NULL,
  `dbms_sap` varchar(255) DEFAULT NULL,
  `dbms_ibm` varchar(255) DEFAULT NULL,
  `dbms_intersystems` varchar(255) DEFAULT NULL,
  `dbms_enterprisedb` varchar(255) DEFAULT NULL,
  `dbms_marklogic` varchar(255) DEFAULT NULL,
  `dbms_datastacks` varchar(255) DEFAULT NULL,
  `dbms_maria` varchar(255) DEFAULT NULL,
  `dbms_mongo` varchar(255) DEFAULT NULL,
  `dbms_couchbase` varchar(255) DEFAULT NULL,
  `dbms_aerospike` varchar(255) DEFAULT NULL,
  `dbms_mysql` varchar(255) DEFAULT NULL,
  `dbms_pg` varchar(255) DEFAULT NULL,
  `dbms_sqlite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- DELETE FROM responses WHERE ts = "9/2/2015 16:22:54" -- duplicate entry by same student




CREATE TABLE `exit_responses` (
  `response_id` int(11) NOT NULL DEFAULT '0',
  `ts` varchar(255) DEFAULT NULL,
  `net_id` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `os_windows` varchar(255) DEFAULT NULL,
  `os_mac` varchar(255) DEFAULT NULL,
  `os_ios` varchar(255) DEFAULT NULL,
  `os_android` varchar(255) DEFAULT NULL,
  `os_linux` varchar(255) DEFAULT NULL,
  `dbms_access` varchar(255) DEFAULT NULL,
  `dbms_mysql` varchar(255) DEFAULT NULL,
  `dbms_pg` varchar(255) DEFAULT NULL,
  `dbms_sqlite` varchar(255) DEFAULT NULL,
  `dbms_mongo` varchar(255) DEFAULT NULL,
  `soft_word` varchar(255) DEFAULT NULL,
  `soft_gdocs` varchar(255) DEFAULT NULL,
  `soft_excel` varchar(255) DEFAULT NULL,
  `soft_gsheets` varchar(255) DEFAULT NULL,
  `soft_ppt` varchar(255) DEFAULT NULL,
  `soft_gslides` varchar(255) DEFAULT NULL,
  `soft_visio` varchar(255) DEFAULT NULL,
  `soft_lucid` varchar(255) DEFAULT NULL,
  `soft_atom` varchar(255) DEFAULT NULL,
  `soft_nppp` varchar(255) DEFAULT NULL,
  `soft_ghdesk` varchar(255) DEFAULT NULL,
  `comms_email` varchar(255) DEFAULT NULL,
  `comms_bboard` varchar(255) DEFAULT NULL,
  `comms_slack` varchar(255) DEFAULT NULL,
  `comms_gh` varchar(255) DEFAULT NULL,
  `data_csv` varchar(255) DEFAULT NULL,
  `data_json` varchar(255) DEFAULT NULL,
  `data_xml` varchar(255) DEFAULT NULL,
  `languages_sql` varchar(255) DEFAULT NULL,
  `languages_html` varchar(255) DEFAULT NULL,
  `languages_css` varchar(255) DEFAULT NULL,
  `languages_js` varchar(255) DEFAULT NULL,
  `languages_rb` varchar(255) DEFAULT NULL,
  `languages_py` varchar(255) DEFAULT NULL,
  `languages_r` varchar(255) DEFAULT NULL,
  `languages_vb` varchar(255) DEFAULT NULL,
  `languages_java` varchar(255) DEFAULT NULL,
  `languages_php` varchar(255) DEFAULT NULL,
  `languages_c` varchar(255) DEFAULT NULL,
  `languages_cpp` varchar(255) DEFAULT NULL,
  `languages_cshrp` varchar(255) DEFAULT NULL,
  `obj_subjectmatter` varchar(255) DEFAULT NULL,
  `obj_techskills` varchar(255) DEFAULT NULL,
  `obj_comms` varchar(255) DEFAULT NULL,
  `obj_writing` varchar(255) DEFAULT NULL,
  `obj_teams` varchar(255) DEFAULT NULL,
  `obj_industry` varchar(255) DEFAULT NULL,
  `obj_creativity` varchar(255) DEFAULT NULL,
  `obj_reflection` text,
  `course_lectures_relevant` varchar(255) DEFAULT NULL,
  `course_lectures_engaging` varchar(255) DEFAULT NULL,
  `course_lectures_fun` varchar(255) DEFAULT NULL,
  `course_assignments_relevant` varchar(255) DEFAULT NULL,
  `course_assignments_challenging` varchar(255) DEFAULT NULL,
  `course_assignments_engaging` varchar(255) DEFAULT NULL,
  `course_assignments_reasonable` varchar(255) DEFAULT NULL,
  `course_assignments_fun` varchar(255) DEFAULT NULL,
  `course_assignments_expectclear` varchar(255) DEFAULT NULL,
  `course_project_relevant` varchar(255) DEFAULT NULL,
  `course_project_engaging` varchar(255) DEFAULT NULL,
  `course_project_fun` varchar(255) DEFAULT NULL,
  `course_project_expectclear` varchar(255) DEFAULT NULL,
  `course_feedback` text,
  `prof_caresmysuccess` varchar(255) DEFAULT NULL,
  `prof_organized` varchar(255) DEFAULT NULL,
  `prof_punctual` varchar(255) DEFAULT NULL,
  `prof_clearcomms` varchar(255) DEFAULT NULL,
  `prof_prepared` varchar(255) DEFAULT NULL,
  `prof_available` varchar(255) DEFAULT NULL,
  `prof_knows_subject` varchar(255) DEFAULT NULL,
  `prof_exp_subject` varchar(255) DEFAULT NULL,
  `prof_fairdecisions` varchar(255) DEFAULT NULL,
  `prof_high_expectations` varchar(255) DEFAULT NULL,
  `prof_wiseclasstime` varchar(255) DEFAULT NULL,
  `self_commscomfwprof` varchar(255) DEFAULT NULL,
  `prof_recommendation` varchar(255) DEFAULT NULL,
  `prof_feedback` text,
  `ta_recommendation` varchar(255) DEFAULT NULL,
  `ta_feedback` text,
  PRIMARY KEY (`response_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- SELECT * FROM exit_responses WHERE ts = "12/9/2015 18:25:53" -- second submission by the same student (contains different values and a more favorable professor rating; possibly this student re-considered original responses, or this student needed more time to submit thoughtful responses. not sure which response to consider. should both be used? neither? an average of the two?
-- i think i will average this student's responses

*/


/* RESPONSE TRANSLATION AND QUANTIFICATION FUNCTIONS */

CREATE FUNCTION agreement_response_to_int (s CHAR(20))
RETURNS INT -- [1,2,3,4,5]
RETURN CASE
  WHEN s LIKE "%5%" THEN 5 -- 5 (agree)
  WHEN s LIKE "%3%" THEN 3 -- 3 (neutral)
  WHEN s LIKE "%1%" THEN 1 -- 1 (disagree)
  ELSE cast(s AS UNSIGNED)
END;

CREATE FUNCTION comfort_response_to_int (s CHAR(55))
RETURNS INT -- [1,2,3,4,5]
RETURN CASE
  WHEN s LIKE "%Can use with ease%" THEN 5
  WHEN s LIKE "%Can use with comfort%" THEN 4
  WHEN s LIKE "%Used a few times but with discomfort%" THEN 2
  WHEN s LIKE "%Heard of but never used%" THEN 1
  WHEN s LIKE "%Never heard of%" THEN 0
END;

/* ORIGINAL ONBOARDING RESPONSES */

/*
SELECT
  concat(",comfort_response_to_int(",d.code, ") AS ", d.code, " -- ",d.title)
FROM responses_dict d
WHERE d.question_group NOT IN ("PersonalBio","ResponseParsing")
ORDER BY d.question_group, d.code
*/

DROP TABLE IF EXISTS istm_4121._responses;
CREATE TABLE istm_4121._responses AS (
  SELECT
    student_id
    ,comfort_response_to_int(data_csv) AS data_csv -- Programming Language, Framework, and Technology Usage [CSV]
    ,comfort_response_to_int(data_json) AS data_json -- Programming Language, Framework, and Technology Usage [JSON]
    ,comfort_response_to_int(data_xml) AS data_xml -- Programming Language, Framework, and Technology Usage [XML]
    ,comfort_response_to_int(dbms_access) AS dbms_access -- Software Usage [MS Access]
    ,comfort_response_to_int(dbms_aerospike) AS dbms_aerospike -- Relational Database Management Software (RDBMS) Usage [Aerospike]
    ,comfort_response_to_int(dbms_couchbase) AS dbms_couchbase -- Relational Database Management Software (RDBMS) Usage [Couchbase]
    ,comfort_response_to_int(dbms_datastacks) AS dbms_datastacks -- Relational Database Management Software (RDBMS) Usage [DataStax]
    ,comfort_response_to_int(dbms_enterprisedb) AS dbms_enterprisedb -- Relational Database Management Software (RDBMS) Usage [EnterpriseDB]
    ,comfort_response_to_int(dbms_ibm) AS dbms_ibm -- Relational Database Management Software (RDBMS) Usage [IBM]
    ,comfort_response_to_int(dbms_intersystems) AS dbms_intersystems -- Relational Database Management Software (RDBMS) Usage [InterSystems]
    ,comfort_response_to_int(dbms_maria) AS dbms_maria -- Relational Database Management Software (RDBMS) Usage [MariaDB]
    ,comfort_response_to_int(dbms_marklogic) AS dbms_marklogic -- Relational Database Management Software (RDBMS) Usage [MarkLogic]
    ,comfort_response_to_int(dbms_microsoft) AS dbms_microsoft -- Relational Database Management Software (RDBMS) Usage [Microsoft]
    ,comfort_response_to_int(dbms_mongo) AS dbms_mongo -- Relational Database Management Software (RDBMS) Usage [MongoDB]
    ,comfort_response_to_int(dbms_mysql) AS dbms_mysql -- Relational Database Management Software (RDBMS) Usage [MySQL]
    ,comfort_response_to_int(dbms_oracle) AS dbms_oracle -- Relational Database Management Software (RDBMS) Usage [Oracle]
    ,comfort_response_to_int(dbms_pg) AS dbms_pg -- Relational Database Management Software (RDBMS) Usage [PostgreSQL]
    ,comfort_response_to_int(dbms_sap) AS dbms_sap -- Relational Database Management Software (RDBMS) Usage [SAP]
    ,comfort_response_to_int(dbms_sqlite) AS dbms_sqlite -- Relational Database Management Software (RDBMS) Usage [SQLite]
    ,comfort_response_to_int(os_android) AS os_android -- Operating System Usage [Android OS]
    ,comfort_response_to_int(os_ios) AS os_ios -- Operating System Usage [iOS]
    ,comfort_response_to_int(os_mac) AS os_mac -- Operating System Usage [Mac OS]
    ,comfort_response_to_int(os_windows) AS os_windows -- Operating System Usage [Windows OS]
    ,comfort_response_to_int(lang_c) AS lang_c -- Programming Language, Framework, and Technology Usage [C]
    ,comfort_response_to_int(lang_cpp) AS lang_cpp -- Programming Language, Framework, and Technology Usage [C++]
    ,comfort_response_to_int(lang_csh) AS lang_csh -- Programming Language, Framework, and Technology Usage [C#]
    ,comfort_response_to_int(lang_css) AS lang_css -- Programming Language, Framework, and Technology Usage [CSS]
    ,comfort_response_to_int(lang_dotnet) AS lang_dotnet -- Programming Language, Framework, and Technology Usage [.NET]
    ,comfort_response_to_int(lang_html) AS lang_html -- Programming Language, Framework, and Technology Usage [HTML]
    ,comfort_response_to_int(lang_java) AS lang_java -- Programming Language, Framework, and Technology Usage [Java]
    ,comfort_response_to_int(lang_js) AS lang_js -- Programming Language, Framework, and Technology Usage [JavaScript]
    ,comfort_response_to_int(lang_objc) AS lang_objc -- Programming Language, Framework, and Technology Usage [Objective C]
    ,comfort_response_to_int(lang_perl) AS lang_perl -- Programming Language, Framework, and Technology Usage [Perl]
    ,comfort_response_to_int(lang_php) AS lang_php -- Programming Language, Framework, and Technology Usage [PHP]
    ,comfort_response_to_int(lang_py) AS lang_py -- Programming Language, Framework, and Technology Usage [Python]
    ,comfort_response_to_int(lang_r) AS lang_r -- Programming Language, Framework, and Technology Usage [R]
    ,comfort_response_to_int(lang_rb) AS lang_rb -- Programming Language, Framework, and Technology Usage [Ruby]
    ,comfort_response_to_int(lang_sql) AS lang_sql -- Programming Language, Framework, and Technology Usage [SQL]
    ,comfort_response_to_int(lang_vb) AS lang_vb -- Programming Language, Framework, and Technology Usage [Visual Basic]
    ,comfort_response_to_int(soft_excel) AS soft_excel -- Software Usage [MS Excel]
    ,comfort_response_to_int(soft_gdocs) AS soft_gdocs -- Software Usage [Google Docs]
    ,comfort_response_to_int(soft_gsheets) AS soft_gsheets -- Software Usage [Google Sheets]
    ,comfort_response_to_int(soft_gslides) AS soft_gslides -- Software Usage [Google Slides]
    ,comfort_response_to_int(soft_lucidchart) AS soft_lucidchart -- Software Usage [Lucidchart]
    ,comfort_response_to_int(soft_ppt) AS soft_ppt -- Software Usage [MS PowerPoint]
    ,comfort_response_to_int(soft_visio) AS soft_visio -- Software Usage [MS Visio]
    ,comfort_response_to_int(soft_word) AS soft_word -- Software Usage [MS Word]
    ,comfort_response_to_int(comms_bboard) AS comms_bboard -- Collaboration and Productivity Tool Usage [Blackboard]
    ,comfort_response_to_int(comms_email) AS comms_email -- Collaboration and Productivity Tool Usage [Email]
    ,comfort_response_to_int(comms_gchat) AS comms_gchat -- Collaboration and Productivity Tool Usage [GChat]
    ,comfort_response_to_int(comms_hipchat) AS comms_hipchat -- Collaboration and Productivity Tool Usage [HipChat]
    ,comfort_response_to_int(comms_irc) AS comms_irc -- Collaboration and Productivity Tool Usage [IRC]
    ,comfort_response_to_int(comms_slack) AS comms_slack -- Collaboration and Productivity Tool Usage [Slack]
    ,comfort_response_to_int(tools_aws) AS tools_aws -- Collaboration and Productivity Tool Usage [AWS]
    ,comfort_response_to_int(tools_bitbucket) AS tools_bitbucket -- Collaboration and Productivity Tool Usage [Bitbucket]
    ,comfort_response_to_int(tools_gh) AS tools_gh -- Collaboration and Productivity Tool Usage [GitHub]
  FROM istm_4121.responses
);
AltER TABLE istm_4121._responses ADD PRIMARY KEY(student_id);

/* EXIT RESPONSES */

/*

SELECT
  CASE
    when d.code in ("prof_recommendation","ta_recommendation") then d.code
    WHEN d.question_group IN ("CourseEval","InstructorEval","PersonalEval") THEN concat(",agreement_response_to_int(",d.code, ") AS ", d.code, " -- ",d.title)
    ELSE concat(",comfort_response_to_int(",d.code, ") AS ", d.code, " -- ",d.title)
  END query_string
FROM exit_responses_dict d
WHERE d.code NOT IN ("ts","student_id","net_id","ta_feedback","prof_feedback", "course_feedback","obj_reflection")
ORDER BY d.question_group, d.code

*/

DROP TABLE IF EXISTS istm_4121._exit_responses;
CREATE TABLE istm_4121._exit_responses AS (
  -- average/blend the responses of the student who submitted two different responses:
  SELECT
    student_id
    ,count(DISTINCT response_id) AS response_count
    ,CASE WHEN count(DISTINCT ta_recommendation) > 1 THEN "N/A" ELSE min(ta_recommendation) END ta_rec
    ,CASE WHEN count(DISTINCT prof_recommendation) > 1 THEN "N/A" ELSE min(ta_recommendation) END prof_rec


    ,avg(course_assignments_challenging) AS course_assignments_challenging -- Course Evaluation [Assignments are challenging]
    ,avg(course_assignments_engaging) AS course_assignments_engaging -- Course Evaluation [Assignments are engaging]
    ,avg(course_assignments_expectclear) AS course_assignments_expectclear -- Course Evaluation [Assignment expectations are clear]
    ,avg(course_assignments_fun) AS course_assignments_fun -- Course Evaluation [Assignments are fun]
    ,avg(course_assignments_reasonable) AS course_assignments_reasonable -- Course Evaluation [Assignments are reasonable]
    ,avg(course_assignments_relevant) AS course_assignments_relevant -- Course Evaluation [Assignments are relevant]
    ,avg(course_lectures_engaging) AS course_lectures_engaging -- Course Evaluation [Lectures are engaging]
    ,avg(course_lectures_fun) AS course_lectures_fun -- Course Evaluation [Lectures are fun]
    ,avg(course_lectures_relevant) AS course_lectures_relevant -- Course Evaluation [Lectures are relevant]
    ,avg(course_project_engaging) AS course_project_engaging -- Course Evaluation [Group Project is engaging]
    ,avg(course_project_expectclear) AS course_project_expectclear -- Course Evaluation [Group Project expectations are clear]
    ,avg(course_project_fun) AS course_project_fun -- Course Evaluation [Group Project is fun]
    ,avg(course_project_relevant) AS course_project_relevant -- Course Evaluation [Group Project is relevant]

    ,avg(data_csv) AS data_csv -- Datatypes [CSV]
    ,avg(data_json) AS data_json -- Datatypes [JSON]
    ,avg(data_xml) AS data_xml -- Datatypes [XML]
    ,avg(dbms_access) AS dbms_access -- Database Management Systems/Software [MS Access]
    ,avg(dbms_mongo) AS dbms_mongo -- Database Management Systems/Software [MongoDB]
    ,avg(dbms_mysql) AS dbms_mysql -- Database Management Systems/Software [MySQL]
    ,avg(dbms_pg) AS dbms_pg -- Database Management Systems/Software [PostgreSQL]
    ,avg(dbms_sqlite) AS dbms_sqlite -- Database Management Systems/Software [SQLite]

    ,avg(prof_available) AS prof_available -- Professor Evaluation [Prof is available outside of class]
    ,avg(prof_caresmysuccess) AS prof_caresmysuccess -- Professor Evaluation [Prof cares about my success]
    ,avg(prof_clearcomms) AS prof_clearcomms -- Professor Evaluation [Prof communicates in a manner I can understand]
    ,avg(prof_exp_subject) AS prof_exp_subject -- Professor Evaluation [Prof is experienced in subject matter]
    ,avg(prof_fairdecisions) AS prof_fairdecisions -- Professor Evaluation [Prof makes fair decisions]
    ,avg(prof_high_expectations) AS prof_high_expectations -- Professor Evaluation [Prof has high expectations]
    ,avg(prof_knows_subject) AS prof_knows_subject -- Professor Evaluation [Prof is knowledgeable in the subject matter]
    ,avg(prof_organized) AS prof_organized -- Professor Evaluation [Prof is organized]
    ,avg(prof_prepared) AS prof_prepared -- Professor Evaluation [Prof is prepared]
    ,avg(prof_punctual) AS prof_punctual -- Professor Evaluation [Prof is punctual]
    ,avg(prof_wiseclasstime) AS prof_wiseclasstime -- Professor Evaluation [Prof makes wise use of class time]
    ,avg(self_commscomfwprof) AS self_commscomfwprof -- Professor Evaluation [I am comfortable communicating with the Prof]

    ,avg(os_android) AS os_android -- Operating Systems [Android OS]
    ,avg(os_ios) AS os_ios -- Operating Systems [iOS]
    ,avg(os_linux) AS os_linux -- Operating Systems [Linux/Unix OS]
    ,avg(os_mac) AS os_mac -- Operating Systems [Mac OS]
    ,avg(os_windows) AS os_windows -- Operating Systems [Windows OS]

    ,avg(obj_comms) AS obj_comms -- Learning Objectives [I improved my communication and presentation skills]
    ,avg(obj_creativity) AS obj_creativity -- Learning Objectives [I leveraged technology as an outlet for creativity]
    ,avg(obj_industry) AS obj_industry -- Learning Objectives [I learned more about contemporary industry practices and challenges]
    ,avg(obj_subjectmatter) AS obj_subjectmatter -- Learning Objectives [I expanded my subject matter knowledge]
    ,avg(obj_teams) AS obj_teams -- Learning Objectives [I improved my ability to work in teams]
    ,avg(obj_techskills) AS obj_techskills -- Learning Objectives [I improved my technology skills]
    ,avg(obj_writing) AS obj_writing -- Learning Objectives [I improved my writing skills]

    ,avg(languages_c) AS languages_c -- Languages [C]
    ,avg(languages_cpp) AS languages_cpp -- Languages [C++]
    ,avg(languages_cshrp) AS languages_cshrp -- Languages [C#]
    ,avg(languages_css) AS languages_css -- Languages [CSS]
    ,avg(languages_html) AS languages_html -- Languages [HTML]
    ,avg(languages_java) AS languages_java -- Languages [Java]
    ,avg(languages_js) AS languages_js -- Languages [JavaScript]
    ,avg(languages_php) AS languages_php -- Languages [PHP]
    ,avg(languages_py) AS languages_py -- Languages [Python]
    ,avg(languages_r) AS languages_r -- Languages [R]
    ,avg(languages_rb) AS languages_rb -- Languages [Ruby]
    ,avg(languages_sql) AS languages_sql -- Languages [SQL]
    ,avg(languages_vb) AS languages_vb -- Languages [Visual Basic]

    ,avg(soft_atom) AS soft_atom -- Personal Computing Software [Atom]
    ,avg(soft_excel) AS soft_excel -- Personal Computing Software [MS Excel]
    ,avg(soft_gdocs) AS soft_gdocs -- Personal Computing Software [Google Docs]
    ,avg(soft_ghdesk) AS soft_ghdesk -- Personal Computing Software [GitHub Desktop]
    ,avg(soft_gsheets) AS soft_gsheets -- Personal Computing Software [Google Sheets]
    ,avg(soft_gslides) AS soft_gslides -- Personal Computing Software [Google Slides]
    ,avg(soft_lucid) AS soft_lucid -- Personal Computing Software [Lucidchart]
    ,avg(soft_nppp) AS soft_nppp -- Personal Computing Software [Notepad++]
    ,avg(soft_ppt) AS soft_ppt -- Personal Computing Software [MS PowerPoint]
    ,avg(soft_visio) AS soft_visio -- Personal Computing Software [MS Visio]
    ,avg(soft_word) AS soft_word -- Personal Computing Software [MS Word]

    ,avg(comms_bboard) AS comms_bboard -- Collaboration and Productivity Tools [Blackboard]
    ,avg(comms_email) AS comms_email -- Collaboration and Productivity Tools [Email]
    ,avg(comms_gh) AS comms_gh -- Collaboration and Productivity Tools [GitHub]
    ,avg(comms_slack) AS comms_slack -- Collaboration and Productivity Tools [Slack]

  FROM (
    -- quantify text responses:
    SELECT
      student_id
      ,response_id

      ,agreement_response_to_int(course_assignments_challenging) AS course_assignments_challenging -- Course Evaluation [Assignments are challenging]
      ,agreement_response_to_int(course_assignments_engaging) AS course_assignments_engaging -- Course Evaluation [Assignments are engaging]
      ,agreement_response_to_int(course_assignments_expectclear) AS course_assignments_expectclear -- Course Evaluation [Assignment expectations are clear]
      ,agreement_response_to_int(course_assignments_fun) AS course_assignments_fun -- Course Evaluation [Assignments are fun]
      ,agreement_response_to_int(course_assignments_reasonable) AS course_assignments_reasonable -- Course Evaluation [Assignments are reasonable]
      ,agreement_response_to_int(course_assignments_relevant) AS course_assignments_relevant -- Course Evaluation [Assignments are relevant]

      ,agreement_response_to_int(course_lectures_engaging) AS course_lectures_engaging -- Course Evaluation [Lectures are engaging]
      ,agreement_response_to_int(course_lectures_fun) AS course_lectures_fun -- Course Evaluation [Lectures are fun]
      ,agreement_response_to_int(course_lectures_relevant) AS course_lectures_relevant -- Course Evaluation [Lectures are relevant]
      ,agreement_response_to_int(course_project_engaging) AS course_project_engaging -- Course Evaluation [Group Project is engaging]
      ,agreement_response_to_int(course_project_expectclear) AS course_project_expectclear -- Course Evaluation [Group Project expectations are clear]
      ,agreement_response_to_int(course_project_fun) AS course_project_fun -- Course Evaluation [Group Project is fun]
      ,agreement_response_to_int(course_project_relevant) AS course_project_relevant -- Course Evaluation [Group Project is relevant]

      ,comfort_response_to_int(data_csv) AS data_csv -- Datatypes [CSV]
      ,comfort_response_to_int(data_json) AS data_json -- Datatypes [JSON]
      ,comfort_response_to_int(data_xml) AS data_xml -- Datatypes [XML]
      ,comfort_response_to_int(dbms_access) AS dbms_access -- Database Management Systems/Software [MS Access]
      ,comfort_response_to_int(dbms_mongo) AS dbms_mongo -- Database Management Systems/Software [MongoDB]
      ,comfort_response_to_int(dbms_mysql) AS dbms_mysql -- Database Management Systems/Software [MySQL]
      ,comfort_response_to_int(dbms_pg) AS dbms_pg -- Database Management Systems/Software [PostgreSQL]
      ,comfort_response_to_int(dbms_sqlite) AS dbms_sqlite -- Database Management Systems/Software [SQLite]

      ,agreement_response_to_int(prof_available) AS prof_available -- Professor Evaluation [Prof is available outside of class]
      ,agreement_response_to_int(prof_caresmysuccess) AS prof_caresmysuccess -- Professor Evaluation [Prof cares about my success]
      ,agreement_response_to_int(prof_clearcomms) AS prof_clearcomms -- Professor Evaluation [Prof communicates in a manner I can understand]
      ,agreement_response_to_int(prof_exp_subject) AS prof_exp_subject -- Professor Evaluation [Prof is experienced in subject matter]
      ,agreement_response_to_int(prof_fairdecisions) AS prof_fairdecisions -- Professor Evaluation [Prof makes fair decisions]
      ,agreement_response_to_int(prof_high_expectations) AS prof_high_expectations -- Professor Evaluation [Prof has high expectations]
      ,agreement_response_to_int(prof_knows_subject) AS prof_knows_subject -- Professor Evaluation [Prof is knowledgeable in the subject matter]
      ,agreement_response_to_int(prof_organized) AS prof_organized -- Professor Evaluation [Prof is organized]
      ,agreement_response_to_int(prof_prepared) AS prof_prepared -- Professor Evaluation [Prof is prepared]
      ,agreement_response_to_int(prof_punctual) AS prof_punctual -- Professor Evaluation [Prof is punctual]
      ,agreement_response_to_int(prof_wiseclasstime) AS prof_wiseclasstime -- Professor Evaluation [Prof makes wise use of class time]
      ,agreement_response_to_int(self_commscomfwprof) AS self_commscomfwprof -- Professor Evaluation [I am comfortable communicating with the Prof]

      ,comfort_response_to_int(os_android) AS os_android -- Operating Systems [Android OS]
      ,comfort_response_to_int(os_ios) AS os_ios -- Operating Systems [iOS]
      ,comfort_response_to_int(os_linux) AS os_linux -- Operating Systems [Linux/Unix OS]
      ,comfort_response_to_int(os_mac) AS os_mac -- Operating Systems [Mac OS]
      ,comfort_response_to_int(os_windows) AS os_windows -- Operating Systems [Windows OS]

      ,agreement_response_to_int(obj_comms) AS obj_comms -- Learning Objectives [I improved my communication and presentation skills]
      ,agreement_response_to_int(obj_creativity) AS obj_creativity -- Learning Objectives [I leveraged technology as an outlet for creativity]
      ,agreement_response_to_int(obj_industry) AS obj_industry -- Learning Objectives [I learned more about contemporary industry practices and challenges]
      ,agreement_response_to_int(obj_subjectmatter) AS obj_subjectmatter -- Learning Objectives [I expanded my subject matter knowledge]
      ,agreement_response_to_int(obj_teams) AS obj_teams -- Learning Objectives [I improved my ability to work in teams]
      ,agreement_response_to_int(obj_techskills) AS obj_techskills -- Learning Objectives [I improved my technology skills]
      ,agreement_response_to_int(obj_writing) AS obj_writing -- Learning Objectives [I improved my writing skills]

      ,comfort_response_to_int(languages_c) AS languages_c -- Languages [C]
      ,comfort_response_to_int(languages_cpp) AS languages_cpp -- Languages [C++]
      ,comfort_response_to_int(languages_cshrp) AS languages_cshrp -- Languages [C#]
      ,comfort_response_to_int(languages_css) AS languages_css -- Languages [CSS]
      ,comfort_response_to_int(languages_html) AS languages_html -- Languages [HTML]
      ,comfort_response_to_int(languages_java) AS languages_java -- Languages [Java]
      ,comfort_response_to_int(languages_js) AS languages_js -- Languages [JavaScript]
      ,comfort_response_to_int(languages_php) AS languages_php -- Languages [PHP]
      ,comfort_response_to_int(languages_py) AS languages_py -- Languages [Python]
      ,comfort_response_to_int(languages_r) AS languages_r -- Languages [R]
      ,comfort_response_to_int(languages_rb) AS languages_rb -- Languages [Ruby]
      ,comfort_response_to_int(languages_sql) AS languages_sql -- Languages [SQL]
      ,comfort_response_to_int(languages_vb) AS languages_vb -- Languages [Visual Basic]
      ,comfort_response_to_int(soft_atom) AS soft_atom -- Personal Computing Software [Atom]
      ,comfort_response_to_int(soft_excel) AS soft_excel -- Personal Computing Software [MS Excel]
      ,comfort_response_to_int(soft_gdocs) AS soft_gdocs -- Personal Computing Software [Google Docs]
      ,comfort_response_to_int(soft_ghdesk) AS soft_ghdesk -- Personal Computing Software [GitHub Desktop]
      ,comfort_response_to_int(soft_gsheets) AS soft_gsheets -- Personal Computing Software [Google Sheets]
      ,comfort_response_to_int(soft_gslides) AS soft_gslides -- Personal Computing Software [Google Slides]
      ,comfort_response_to_int(soft_lucid) AS soft_lucid -- Personal Computing Software [Lucidchart]
      ,comfort_response_to_int(soft_nppp) AS soft_nppp -- Personal Computing Software [Notepad++]
      ,comfort_response_to_int(soft_ppt) AS soft_ppt -- Personal Computing Software [MS PowerPoint]
      ,comfort_response_to_int(soft_visio) AS soft_visio -- Personal Computing Software [MS Visio]
      ,comfort_response_to_int(soft_word) AS soft_word -- Personal Computing Software [MS Word]
      ,comfort_response_to_int(comms_bboard) AS comms_bboard -- Collaboration and Productivity Tools [Blackboard]
      ,comfort_response_to_int(comms_email) AS comms_email -- Collaboration and Productivity Tools [Email]
      ,comfort_response_to_int(comms_gh) AS comms_gh -- Collaboration and Productivity Tools [GitHub]
      ,comfort_response_to_int(comms_slack) AS comms_slack -- Collaboration and Productivity Tools [Slack]

      ,ta_recommendation -- Teaching Assistant Recommendation
      ,prof_recommendation
    FROM istm_4121.exit_responses
  ) zz
  GROUP BY student_id
);
ALTER TABLE istm_4121._exit_responses ADD PRIMARY KEY(student_id);


/* COMPARISONS */


/*

SELECT DISTINCT COLUMN_NAME
FROM information_schema.columns
WHERE table_schema = "istm_4121"
  AND TABLE_NAME = "_responses"
ORDER BY column_name

SELECT DISTINCT COLUMN_NAME
FROM information_schema.columns
WHERE table_schema = "istm_4121"
  AND TABLE_NAME = "_exit_responses"
ORDER BY column_name

-- double-check matches in a spreadsheet
-- use spreadsheet concatenation function to populate sql string for each column...

*/

DROP TABLE IF EXISTS istm_4121._diffs;
CREATE TABLE istm_4121._diffs as (
  SELECT
    r.student_id
    ,xr.comms_bboard - r.comms_bboard AS diff_comms_bboard
    ,xr.comms_email - r.comms_email AS diff_comms_email
    ,xr.comms_gh - r.tools_gh AS diff_tools_gh
    ,xr.comms_slack - r.comms_slack AS diff_comms_slack
    ,xr.data_csv - r.data_csv AS diff_data_csv
    ,xr.data_json - r.data_json AS diff_data_json
    ,xr.data_xml - r.data_xml AS diff_data_xml
    ,xr.dbms_access - r.dbms_access AS diff_dbms_access
    ,xr.dbms_mongo - r.dbms_mongo AS diff_dbms_mongo
    ,xr.dbms_mysql - r.dbms_mysql AS diff_dbms_mysql
    ,xr.dbms_pg - r.dbms_pg AS diff_dbms_pg
    ,xr.dbms_sqlite - r.dbms_sqlite AS diff_dbms_sqlite
    ,xr.languages_c - r.lang_c AS diff_lang_c
    ,xr.languages_cpp - r.lang_cpp AS diff_lang_cpp
    ,xr.languages_cshrp - r.lang_csh AS diff_lang_csh
    ,xr.languages_css - r.lang_css AS diff_lang_css
    ,xr.languages_html - r.lang_html AS diff_lang_html
    ,xr.languages_java - r.lang_java AS diff_lang_java
    ,xr.languages_js - r.lang_js AS diff_lang_js
    ,xr.languages_php - r.lang_php AS diff_lang_php
    ,xr.languages_py - r.lang_py AS diff_lang_py
    ,xr.languages_r - r.lang_r AS diff_lang_r
    ,xr.languages_rb - r.lang_rb AS diff_lang_rb
    ,xr.languages_sql - r.lang_sql AS diff_lang_sql
    ,xr.languages_vb - r.lang_vb AS diff_lang_vb
    ,xr.os_android - r.os_android AS diff_os_android
    ,xr.os_ios - r.os_ios AS diff_os_ios
    ,xr.os_mac - r.os_mac AS diff_os_mac
    ,xr.os_windows - r.os_windows AS diff_os_windows
    ,xr.soft_excel - r.soft_excel AS diff_soft_excel
    ,xr.soft_gdocs - r.soft_gdocs AS diff_soft_gdocs
    ,xr.soft_gsheets - r.soft_gsheets AS diff_soft_gsheets
    ,xr.soft_gslides - r.soft_gslides AS diff_soft_gslides
    ,xr.soft_lucid - r.soft_lucidchart AS diff_soft_lucidchart
    ,xr.soft_ppt - r.soft_ppt AS diff_soft_ppt
    ,xr.soft_visio - r.soft_visio AS diff_soft_visio
    ,xr.soft_word - r.soft_word AS diff_soft_word
  FROM _responses r
  LEFT JOIN _exit_responses xr ON r.student_id = xr.student_id
);
ALTER TABLE _diffs ADD PRIMARY KEY(student_id);

































/* STUDENT PII-SAFE DEMOS */

-- todo: for better coverage and accuracy, get this data from banweb
DROP TABLE IF EXISTS istm_4121._students;
CREATE TABLE istm_4121._students AS (
  SELECT
    g.student_id
    ,CASE
      WHEN r.hometown LIKE "%NY%"
        OR r.hometown LIKE "%, CT%"
        OR r.hometown LIKE "%, NJ%"
        OR r.hometown LIKE "%Connecticut%"
        OR r.hometown LIKE "%, MA%"
        OR r.student_id = 30
        OR r.hometown LIKE "%Vermont%" THEN "US- Northeast"

      WHEN r.hometown LIKE "%, VA%"
        OR R.hometown LIKE "% MD%" -- THEN "US- Mid Atlantic"
      -- WHEN
        OR r.student_id = 22
        OR r.hometown LIKE "%, KS%"
        OR r.hometown LIKE "%Saint Louis%"
        OR r.hometown LIKE "%Los Angeles%"
        OR r.hometown LIKE "%Seattle%"
        OR r.hometown LIKE "%Tampa"
        OR r.hometown LIKE "%Las Vegas%" THEN "US- Other" -- THEN "US- South and/or West"

     WHEN r.hometown LIKE "%Saudi Arabia%"
        OR r.hometown LIKE "%jeddah%"
        OR r.hometown LIKE "%riyadh%"
        OR r.hometown LIKE "%Calcutta%" THEN "Middle East"

      WHEN r.hometown LIKE "%China%"
        OR r.hometown LIKE "%South Korea%" THEN "Asia"

      WHEN r.hometown LIKE "%Venezuela%" THEN "South America"

      ELSE "UNKNOWN"
    END home_region
    ,r.grad_class
    ,r.majors
    ,r.pc
    ,r.pc_os
  FROM gradebook g
  LEFT JOIN responses r ON r.student_id = g.student_id
  ORDER BY home_region
);
ALTER TABLE istm_4121._students ADD PRIMARY KEY(student_id);
































/* QUERIES FOR TABLEAU */

/*
-- generate query strings:

SELECT
  concat(",AVG(",COLUMN_NAME,") AS avg_",COLUMN_NAME)
FROM information_schema.columns
WHERE table_schema = "istm_4121"
  AND TABLE_NAME = "_responses"
ORDER BY column_name;

SELECT
  concat(",AVG(",COLUMN_NAME,") AS avg_",COLUMN_NAME)
FROM information_schema.columns
WHERE table_schema = "istm_4121"
  AND TABLE_NAME = "_exit_responses"
ORDER BY column_name;

SELECT
  concat(",AVG(",COLUMN_NAME,") AS avg_",COLUMN_NAME)
FROM information_schema.columns
WHERE table_schema = "istm_4121"
  AND TABLE_NAME = "_diffs"
ORDER BY column_name;

*/

DROP TABLE IF EXISTS istm_4121._response_avgs;
CREATE TABLE istm_4121._response_avgs AS (
  SELECT
    count(DISTINCT student_id) AS response_count

    ,AVG(comms_bboard) AS avg_comms_bboard
    ,AVG(comms_email) AS avg_comms_email
    ,AVG(comms_gchat) AS avg_comms_gchat
    ,AVG(comms_hipchat) AS avg_comms_hipchat
    ,AVG(comms_irc) AS avg_comms_irc
    ,AVG(comms_slack) AS avg_comms_slack
    ,AVG(data_csv) AS avg_data_csv
    ,AVG(data_json) AS avg_data_json
    ,AVG(data_xml) AS avg_data_xml
    ,AVG(dbms_access) AS avg_dbms_access
    ,AVG(dbms_aerospike) AS avg_dbms_aerospike
    ,AVG(dbms_couchbase) AS avg_dbms_couchbase
    ,AVG(dbms_datastacks) AS avg_dbms_datastacks
    ,AVG(dbms_enterprisedb) AS avg_dbms_enterprisedb
    ,AVG(dbms_ibm) AS avg_dbms_ibm
    ,AVG(dbms_intersystems) AS avg_dbms_intersystems
    ,AVG(dbms_maria) AS avg_dbms_maria
    ,AVG(dbms_marklogic) AS avg_dbms_marklogic
    ,AVG(dbms_microsoft) AS avg_dbms_microsoft
    ,AVG(dbms_mongo) AS avg_dbms_mongo
    ,AVG(dbms_mysql) AS avg_dbms_mysql
    ,AVG(dbms_oracle) AS avg_dbms_oracle
    ,AVG(dbms_pg) AS avg_dbms_pg
    ,AVG(dbms_sap) AS avg_dbms_sap
    ,AVG(dbms_sqlite) AS avg_dbms_sqlite
    ,AVG(lang_c) AS avg_lang_c
    ,AVG(lang_cpp) AS avg_lang_cpp
    ,AVG(lang_csh) AS avg_lang_csh
    ,AVG(lang_css) AS avg_lang_css
    ,AVG(lang_dotnet) AS avg_lang_dotnet
    ,AVG(lang_html) AS avg_lang_html
    ,AVG(lang_java) AS avg_lang_java
    ,AVG(lang_js) AS avg_lang_js
    ,AVG(lang_objc) AS avg_lang_objc
    ,AVG(lang_perl) AS avg_lang_perl
    ,AVG(lang_php) AS avg_lang_php
    ,AVG(lang_py) AS avg_lang_py
    ,AVG(lang_r) AS avg_lang_r
    ,AVG(lang_rb) AS avg_lang_rb
    ,AVG(lang_sql) AS avg_lang_sql
    ,AVG(lang_vb) AS avg_lang_vb
    ,AVG(os_android) AS avg_os_android
    ,AVG(os_ios) AS avg_os_ios
    ,AVG(os_mac) AS avg_os_mac
    ,AVG(os_windows) AS avg_os_windows
    ,AVG(soft_excel) AS avg_soft_excel
    ,AVG(soft_gdocs) AS avg_soft_gdocs
    ,AVG(soft_gsheets) AS avg_soft_gsheets
    ,AVG(soft_gslides) AS avg_soft_gslides
    ,AVG(soft_lucidchart) AS avg_soft_lucidchart
    ,AVG(soft_ppt) AS avg_soft_ppt
    ,AVG(soft_visio) AS avg_soft_visio
    ,AVG(soft_word) AS avg_soft_word
    ,AVG(tools_aws) AS avg_tools_aws
    ,AVG(tools_bitbucket) AS avg_tools_bitbucket
    ,AVG(tools_gh) AS avg_tools_gh
  FROM istm_4121._responses
); -- then transpose these results in a spreadsheet

DROP TABLE IF EXISTS istm_4121._exit_response_avgs;
CREATE TABLE istm_4121._exit_response_avgs AS (
  SELECT
    count(DISTINCT student_id) AS response_count
    ,AVG(comms_bboard) AS avg_comms_bboard
    ,AVG(comms_email) AS avg_comms_email
    ,AVG(comms_gh) AS avg_comms_gh
    ,AVG(comms_slack) AS avg_comms_slack
    ,AVG(course_assignments_challenging) AS avg_course_assignments_challenging
    ,AVG(course_assignments_engaging) AS avg_course_assignments_engaging
    ,AVG(course_assignments_expectclear) AS avg_course_assignments_expectclear
    ,AVG(course_assignments_fun) AS avg_course_assignments_fun
    ,AVG(course_assignments_reasonable) AS avg_course_assignments_reasonable
    ,AVG(course_assignments_relevant) AS avg_course_assignments_relevant
    ,AVG(course_lectures_engaging) AS avg_course_lectures_engaging
    ,AVG(course_lectures_fun) AS avg_course_lectures_fun
    ,AVG(course_lectures_relevant) AS avg_course_lectures_relevant
    ,AVG(course_project_engaging) AS avg_course_project_engaging
    ,AVG(course_project_expectclear) AS avg_course_project_expectclear
    ,AVG(course_project_fun) AS avg_course_project_fun
    ,AVG(course_project_relevant) AS avg_course_project_relevant

    ,AVG(data_csv) AS avg_data_csv
    ,AVG(data_json) AS avg_data_json
    ,AVG(data_xml) AS avg_data_xml
    ,AVG(dbms_access) AS avg_dbms_access
    ,AVG(dbms_mongo) AS avg_dbms_mongo
    ,AVG(dbms_mysql) AS avg_dbms_mysql
    ,AVG(dbms_pg) AS avg_dbms_pg
    ,AVG(dbms_sqlite) AS avg_dbms_sqlite
    ,AVG(languages_c) AS avg_languages_c
    ,AVG(languages_cpp) AS avg_languages_cpp
    ,AVG(languages_cshrp) AS avg_languages_cshrp
    ,AVG(languages_css) AS avg_languages_css
    ,AVG(languages_html) AS avg_languages_html
    ,AVG(languages_java) AS avg_languages_java
    ,AVG(languages_js) AS avg_languages_js
    ,AVG(languages_php) AS avg_languages_php
    ,AVG(languages_py) AS avg_languages_py
    ,AVG(languages_r) AS avg_languages_r
    ,AVG(languages_rb) AS avg_languages_rb
    ,AVG(languages_sql) AS avg_languages_sql
    ,AVG(languages_vb) AS avg_languages_vb

    ,AVG(obj_comms) AS avg_obj_comms
    ,AVG(obj_creativity) AS avg_obj_creativity
    ,AVG(obj_industry) AS avg_obj_industry
    ,AVG(obj_subjectmatter) AS avg_obj_subjectmatter
    ,AVG(obj_teams) AS avg_obj_teams
    ,AVG(obj_techskills) AS avg_obj_techskills
    ,AVG(obj_writing) AS avg_obj_writing

    ,AVG(os_android) AS avg_os_android
    ,AVG(os_ios) AS avg_os_ios
    ,AVG(os_linux) AS avg_os_linux
    ,AVG(os_mac) AS avg_os_mac
    ,AVG(os_windows) AS avg_os_windows

    ,AVG(prof_available) AS avg_prof_available
    ,AVG(prof_caresmysuccess) AS avg_prof_caresmysuccess
    ,AVG(prof_clearcomms) AS avg_prof_clearcomms
    ,AVG(prof_exp_subject) AS avg_prof_exp_subject
    ,AVG(prof_fairdecisions) AS avg_prof_fairdecisions
    ,AVG(prof_high_expectations) AS avg_prof_high_expectations
    ,AVG(prof_knows_subject) AS avg_prof_knows_subject
    ,AVG(prof_organized) AS avg_prof_organized
    ,AVG(prof_prepared) AS avg_prof_prepared
    ,AVG(prof_punctual) AS avg_prof_punctual
    ,AVG(prof_wiseclasstime) AS avg_prof_wiseclasstime
    ,AVG(self_commscomfwprof) AS avg_self_commscomfwprof

    ,AVG(soft_atom) AS avg_soft_atom
    ,AVG(soft_excel) AS avg_soft_excel
    ,AVG(soft_gdocs) AS avg_soft_gdocs
    ,AVG(soft_ghdesk) AS avg_soft_ghdesk
    ,AVG(soft_gsheets) AS avg_soft_gsheets
    ,AVG(soft_gslides) AS avg_soft_gslides
    ,AVG(soft_lucid) AS avg_soft_lucid
    ,AVG(soft_nppp) AS avg_soft_nppp
    ,AVG(soft_ppt) AS avg_soft_ppt
    ,AVG(soft_visio) AS avg_soft_visio
    ,AVG(soft_word) AS avg_soft_word
  FROM istm_4121._exit_responses
); -- then transpose these results in a spreadsheet


DROP TABLE IF EXISTS istm_4121._diff_avgs;
CREATE TABLE istm_4121._diff_avgs AS (
  SELECT
     count(DISTINCT student_id) AS student_count
    ,AVG(diff_comms_bboard) AS avg_diff_comms_bboard
    ,AVG(diff_comms_email) AS avg_diff_comms_email
    ,AVG(diff_comms_slack) AS avg_diff_comms_slack
    ,AVG(diff_data_csv) AS avg_diff_data_csv
    ,AVG(diff_data_json) AS avg_diff_data_json
    ,AVG(diff_data_xml) AS avg_diff_data_xml
    ,AVG(diff_dbms_access) AS avg_diff_dbms_access
    ,AVG(diff_dbms_mongo) AS avg_diff_dbms_mongo
    ,AVG(diff_dbms_mysql) AS avg_diff_dbms_mysql
    ,AVG(diff_dbms_pg) AS avg_diff_dbms_pg
    ,AVG(diff_dbms_sqlite) AS avg_diff_dbms_sqlite
    ,AVG(diff_lang_c) AS avg_diff_lang_c
    ,AVG(diff_lang_cpp) AS avg_diff_lang_cpp
    ,AVG(diff_lang_csh) AS avg_diff_lang_csh
    ,AVG(diff_lang_css) AS avg_diff_lang_css
    ,AVG(diff_lang_html) AS avg_diff_lang_html
    ,AVG(diff_lang_java) AS avg_diff_lang_java
    ,AVG(diff_lang_js) AS avg_diff_lang_js
    ,AVG(diff_lang_php) AS avg_diff_lang_php
    ,AVG(diff_lang_py) AS avg_diff_lang_py
    ,AVG(diff_lang_r) AS avg_diff_lang_r
    ,AVG(diff_lang_rb) AS avg_diff_lang_rb
    ,AVG(diff_lang_sql) AS avg_diff_lang_sql
    ,AVG(diff_lang_vb) AS avg_diff_lang_vb
    ,AVG(diff_os_android) AS avg_diff_os_android
    ,AVG(diff_os_ios) AS avg_diff_os_ios
    ,AVG(diff_os_mac) AS avg_diff_os_mac
    ,AVG(diff_os_windows) AS avg_diff_os_windows
    ,AVG(diff_soft_excel) AS avg_diff_soft_excel
    ,AVG(diff_soft_gdocs) AS avg_diff_soft_gdocs
    ,AVG(diff_soft_gsheets) AS avg_diff_soft_gsheets
    ,AVG(diff_soft_gslides) AS avg_diff_soft_gslides
    ,AVG(diff_soft_lucidchart) AS avg_diff_soft_lucidchart
    ,AVG(diff_soft_ppt) AS avg_diff_soft_ppt
    ,AVG(diff_soft_visio) AS avg_diff_soft_visio
    ,AVG(diff_soft_word) AS avg_diff_soft_word
    ,AVG(diff_tools_gh) AS avg_diff_tools_gh
  FROM istm_4121._diffs
); -- then transpose these results in a spreadsheet


DROP TABLE IF EXISTS istm_4121._student_results;
CREATE TABLE istm_4121._student_results AS (
  SELECT
   s.student_id
   ,s.home_region -- todo: get from banweb
   ,s.grad_class -- todo: get from banweb
   ,s.majors -- todo: parse
   ,s.pc
   ,s.pc_os
   ,g.final_grade
   ,g.letter_grade AS final_letter_grade
   ,coalesce(xr.prof_rec, "N/A") AS prof_rec
   ,coalesce(xr.ta_rec, "N/A") AS ta_rec
  FROM istm_4121.gradebook g
  JOIN istm_4121._students s ON s.student_id = g.student_id
  LEFT JOIN istm_4121._exit_responses xr ON xr.student_id = g.student_id
);
ALTER TABLE istm_4121._student_results ADD PRIMARY KEY(student_id);











SELECT
  count(DISTINCT final_grade)
  ,sum(IF(final_grade >= 80,1,0)) AS as_and_bs
  ,sum(IF(final_grade >= 80,1,0)) / count(DISTINCT final_grade) AS percent_as_and_bs
FROM gradebook
