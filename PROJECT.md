# Group Project

## Description

Students will work together in instructor-assigned teams of two, three, or four to design and implement a relational database-backed information system which fulfills the project requirements.

Each group should elect a representative who will be responsible for communicating progress and submitting assignments on behalf of all group members.

The project includes a business-related component, a pure database component, and a "systems" component which references data operations external to the database itself.

## Requirements

### Business Requirements

  + Business Problem Identification and Description
  + Information Requirements (based on the business problem)
    + Info Inputs Identification and Description
    + Info Outputs Identification and Description
    + Info Updates/Transactions Identification and Description
  + Database/System Objectives (to address the business problem and justify system implementation)

### Database Requirements

   + Logical Design
     + Adherence to Normalization Principles (3NF)
     + Adequate Addressal of the Business Problem
   + Logical Design Documentation
     + Entity Identification and Descriptions
     + Relationship Identification and Descriptions
     + Entity Relationship Diagram (ERD)
     + Table Attribute Identification and Descriptions
     + Data Dictionary
   + Physical Design
     + Index Implementation
   + Physical Design Documentation
     + Index Descriptions
     + Storage Considerations
   + Data Population and Propagation

### System Requirements

   + Data Input Functionality
   + Data Output Functionality
   + Data Update Functionality
   + User Manual/Documentation
   + Technical Maintenance/Administration Documentation

## Tools

Usage of MS Access has been mandated in previous semesters.
 MS Access is a good DBMS choice for this project because it provides built-in functionality not only for the database component, but also for system components like forms and reports.

Students may alternatively choose to implement this project using an open source DBMS. Because open source DBMSs like MySQL do not include the same built-in systems functionality as MS Access, students who choose to leverage an open source DBMS may bear somewhat of an additional burden to learn additional tools and technologies. Appropriate instructional support and evaluation considerations will be provided to these students.

### Suggested Toolsets

Students may leverage prerequisite programming languages as part of a larger database system toolset.

DBMS | scripting language | object-relational-mapping (ORM) library | application framework/microframework
--- | --- | --- | ---
MS Access (stand-alone) | Visual Basic (optional) | N/A | N/A
MySQL/PostgreSQL/SQLite | [Ruby](https://www.ruby-lang.org/en/) | [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord) | [Ruby on Rails](http://rubyonrails.org/)
MySQL/PostgreSQL/SQLite | [Ruby](https://www.ruby-lang.org/en/) | [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord) | [Sinatra](https://github.com/sinatra/sinatra)
MySQL/PostgreSQL/SQLite | [Python](https://www.python.org/) | [Django ORM](https://docs.djangoproject.com/en/1.8/topics/db/) | [Django](https://www.djangoproject.com/)
MySQL/PostgreSQL/SQLite | [Python](https://www.python.org/) | [SQL Alchemy](http://flask.pocoo.org/docs/0.10/patterns/sqlalchemy/) | [Flask](http://flask.pocoo.org/)

> If exploring a new toolset, ask an instructor to help you get started.

## Evaluation Methodology

Each member of the group will receive the same grade for each group project assignment submission.

At the end of the semester, a group member evaluation form will give all students an opportunity to identify the relative contributions of each other group member. The result of these evaluations may influence individual grades on group project assignments.

For more details, refer to the evaluation methodologies for each individual group project assignment:

 + [Midterm Pitch](assignments/group-project/midterm-pitch.md)
 + [Final Deliverable](assignments/group-project/final-deliverable.md)
 + [Final Presentation](assignments/group-project/final-presentation.md)
