# Group Project Toolsets

Student groups may leverage one or more suggested toolsets to implement the final project deliverables.

## Database Management System

MS Access has been mandated for group project use in previous semesters.
 MS Access is a good DBMS choice for this project because it provides built-in functionality not only for the database component, but also for system application components like forms and reports.

Students may alternatively choose to implement this project using an open source DBMS. Because open source DBMSs like MySQL do not include the same built-in application functionality as MS Access, students who choose to leverage an open source DBMS may bear somewhat of an additional burden to learn additional tools and technologies. Appropriate instructional support and evaluation considerations will be provided to these students.

## Programming Languages

Students may leverage web or native application frameworks to implement application functionality necessary to add data to the database (process info inputs) and retrieve data from the database (process info outputs).

If using the MS Access DBMS, students familiar with the [Visual Basic](https://msdn.microsoft.com/en-us/library/2x7h1hfk.aspx) programming language may use it to create a custom native application for Windows OS.

If using an open source DBMS, students familiar with the [Java](https://java.com/en/) programming language may use it to create a custom native application.

If using an open source DBMS, students familiar with the [Ruby](https://www.ruby-lang.org/en/) or [Python](https://www.python.org/) programming languages may use these languages in conjunction with language-specific open source application frameworks to create a custom web application. Students who choose Ruby or Python may establish direct database connections using language-specific database libraries, or by leveraging language-specific Object Relational Mapping (ORM) frameworks.

## Database Connection Libraries

Make optional use of one of the following language-specific database libraries to establish direct database connections for use in scripts and applications:

 + [mysql2](https://github.com/brianmario/mysql2) (MySQL for Ruby)
 + [PyMySQL](https://github.com/PyMySQL/PyMySQL) (MySQL for Python)
 + [pg](https://github.com/ged/ruby-pg) (PostgreSQL for Ruby)
 + [psycopg](http://initd.org/psycopg/) (PostgreSQL for Python)
 + [sqlite3](https://github.com/sparklemotion/sqlite3-ruby) (SQLite for Ruby)
 + [sqlite3](https://pymotw.com/2/sqlite3/) (SQLite for Python)
 + [JDBC](https://docs.oracle.com/javase/tutorial/jdbc/basics/connecting.html) for Java

## Application Frameworks

Make optional use of one of the following language-specific application frameworks and micro-frameworks to create a web interface containing data input forms and/or data reports/visualizations:

 + [Sinatra](https://github.com/sinatra/sinatra) - a Web Application Micro-framework for Ruby
 + [Ruby on Rails](http://rubyonrails.org/) - a Web Application Framework for Ruby
 + [Flask](http://flask.pocoo.org/) - a Web Application Micro-framework for Python
 + [Django](https://www.djangoproject.com/) - Web Application Framework for Python


## Object Relational Mapping (ORM) Frameworks

An ORM abstracts underlying SQL database operations into programming-language-specific syntax and functions. For example the ActiveRecord ORM allows the SQL, `SELECT * FROM bicycles;`, to be written in Ruby as `Bicyle.all`.

Make optional use of one of the following language-specific ORM frameworks as part of a larger application:

 + [ActiveRecord ORM](https://github.com/rails/rails/tree/master/activerecord) - a Ruby ORM, for use with Rails or Sinatra
 + [SQL Alchemy ORM](http://flask.pocoo.org/docs/0.10/patterns/sqlalchemy/) - a Python ORM, for use with Flask
 + [Django ORM](https://docs.djangoproject.com/en/1.8/topics/db/) - a Python ORM, for use with Django
 + [ActiveJDBC](https://github.com/javalite/activejdbc) - a Java ORM

## Web Technologies

Students who are implementing a web application will need to leverage Internet technologies.

 + [HTML](http://www.w3schools.com/html/)
 + [CSS](http://www.w3schools.com/css/default.asp)
 + [JavaScript](http://www.w3schools.com/js/default.asp)

Students who are implementing a web application may use [Twitter Bootstrap](http://getbootstrap.com/2.3.2/) or another front-end website framework in conjunction with [jQuery](https://jquery.com/) to reduce website design efforts and conform to familiar web design practices.

### Javascript Data Visualization Libraries

Students who are building a web application and are familiar with JavaScript may leverage the following libraries for use in creating data visualizations, charts, and dashboards:

  + [Highcharts](http://www.highcharts.com/)
  + [d3](http://d3js.org/)
  + [Mapbox](https://www.mapbox.com/)

## Business Intelligence Software

Students may leverage the [Tableau](http://www.tableau.com/) software pre-insalled on classroom computers to create database-backed dashboards and visualizations.
