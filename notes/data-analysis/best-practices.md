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

Refer to the [SQL Style Guide](/notes/data-analysis/sql-style-guide.md).
