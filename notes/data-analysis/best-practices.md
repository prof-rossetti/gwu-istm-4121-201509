# SQL Best Practices

### Know the schema

Endeavor to learn, understand, and even memorize table names, attribute names, and table relationships.
 Print or draw a schema diagram, table diagram or ERD, and keep it with you for reference as you query.
 This will improve schema familiarity and query productivity.

### Count rows

Notice, and place a high importance on the number of rows returned by each query.
 Anticipate and predict the number of rows you expect will be returned by each query.
 This will help remediate unexpected results and SQL misunderstandings that might otherwise not be revealed by DBMS error messages.

### Start small

Don't try to write the final query in one attempt.
 Start by writing basic queries and execute each successfully before iteratively adding complexity to arrive at your final attempt.
 This will help you diagnose/avoid bugs and syntax errors.

### Work backwards

Think about the end result of the query you are trying to write before you start writing.
 What are the attributes and characteristics of your desired dataset?
 Describe and/or draw your desired dataset before you start writing SQL.
 By keeping in mind your final objective, you will be better able to devise a proper query strategy, and you might save time by avoiding unproductive/improper strategies and attempts.

### Document your work

Document your manual and programmatic tasks alike.
 Literally write down what you did and how you did it, and keep that information close beside your actual work product. Use comments in your code to help explain your intentions and methodology.
 This will improve the ability of yourself and others to repeat your work in the future, and will help you in efforts to diagnose/verify/justify analytical findings.

### Use consistent style

Adopt the writing style of community members or develop your own, but be consistent. This will help you communicate/share your queries with others, and avoid syntax errors.

#### Recommended design guidelines:

 + use lowercase, underscored names for all databases and tables and attributes (no caps, no camel-case, no spaces)

#### Recommended style guidelines:

 + align major clauses on the left margin
 + if there is a single clause parameter, keep it on the same line as the clause
 + if there are multiple clause parameters, write each on a new indented line
 + use table aliases and database aliases when applicable
 + indent subqueries, maintaining a nested left margin for each

```` sql
-- aligned clauses; one clause param on same line as clause:
SELECT *
FROM my_table
WHERE some_date_attribute > '2015-01-01'
````

```` sql
-- aligned clauses; multiple, indented clause params:
SELECT
  first_attribute
  ,second_attribute
  ,third_attribute
FROM my_table
WHERE some_date_attribute > '2015-01-01'
  AND some_string_attribute = 'Sun Valley'
  AND some_text_attribute LIKE '%CA%'
````

```` sql
-- aligned clauses; multiple, indented clause params; table aliasing
SELECT
  t.first_attribute
  ,t.second_attribute
  ,t.third_attribute
  ,r.other_attribute
FROM my_table AS t
JOIN another_table AS r ON t.some_attribute = r.related_attribute
WHERE t.some_date_attribute > '2015-01-01'
  AND t.some_string_attribute = 'Sun Valley'
  AND t.some_text_attribute LIKE '%CA%'
````

```` sql
-- indentation of subqueries
SELECT *
FROM (
    -- aligned clauses; multiple, indented clause params; table aliasing
    SELECT
      t.first_attribute
      ,t.second_attribute
      ,t.third_attribute
      ,r.other_attribute
    FROM my_table AS t
    JOIN another_table AS r ON t.some_attribute = r.related_attribute
      AND t.another_attribute = r.another_related_attribute -- indentation of multiple join conditions
    WHERE t.some_date_attribute > '2015-01-01'
      AND t.some_string_attribute = 'Sun Valley'
      AND t.some_text_attribute LIKE '%CA%'
) AS tv
ORDER BY tv.third_attribute
````
