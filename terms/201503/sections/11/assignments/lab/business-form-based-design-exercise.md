# Business Form-based Database Design Exercise

## Description

Choose one or more paper-based [business forms](/resources/database-design/logical-design/business-forms).

Each form represents one of many business artifacts which would be uncovered during the planning and analysis phases of the systems development lifecycle.

Each form conveys
 a basic level of information about underlying business processes and logic
 which,
  when combined with additional business assumptions and clarifications, constitutes enough information to design a database.

Design a database to store data captured by the form.

### Recommended Methodology

For each form:

1. Write a comprehensive list of sentences which demonstrate your understanding of the business logic and processes conveyed by the form.

+ Write a comprehensive list of follow-up questions you would like to ask the business to gain additional clarity into business logic and processes.

+ In response to question clarifications, revise and/or expand your list of written sentences; in absence of question clarifications, make reasonable assumptions to answer your own questions, and add those to your list.

+ Sketch the design of a **single table** to store all data captured by the form, and fill the table with a comprehensive set of records which convey all  possibilities of attribute value combinations.

+ Based on the written descriptions and  table data, perform the normalization process to arrive at a final database design: identify attribute dependencies; cluster logical attribute groupings into distinct entities; identify primary keys; identify and classify relationships between entities; and identify foreign keys.

+ Sketch a clear and concise diagram to convey the design of your database.
