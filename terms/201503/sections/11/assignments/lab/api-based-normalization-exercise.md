# API-based Normalization Exercise

## Description

Refer to this [bike-share data](https://github.com/gwu-business/bikeshare-data/tree/master/data) which has been extracted from the [CityBikes API](http://api.citybik.es/v2/).

The dataset in its current form represents a database design which is mid-way through the normalization process. Import the .csv files into a DBMS: choose table names and datatypes, and assign primary keys and indices as applicable. Inspect and analyze the data. Identify entities and relationships.

Refer to [example CityBikes API responses](https://github.com/gwu-business/bikeshare-data/blob/master/fixtures/FIXTURES.md) or make your own network requests to understand what the data looks like in its original form as returned by the API.

Follow the normalization process to its conclusion to design a database to store API data.

### Recommended Methodology

 1. Write a comprehensive list of sentences which demonstrate your understanding of the business logic conveyed by API data.
 + Sketch the design of a **single table** to store all data returned by the API, and fill the table with a comprehensive set of records which convey all possibilities of attribute value combinations.
 + Based on the written descriptions and table data, perform the normalization process to arrive at a final database design: identify attribute dependencies; cluster logical attribute groupings into distinct entities; identify primary keys; identify and classify relationships between entities; and identify foreign keys.
 + Sketch a clear and concise diagram to convey the final design of your database.
