# API-based Database Design Exercise

## Description

Search the Internet for an API which returns data of particular interest to you.
 If you get stuck, try one of the following:

 + [US Federal Elections Commission API](https://api.open.fec.gov/developers)
 + [GTFS Transit Data Exchange API](http://www.gtfs-data-exchange.com/api)
 + [New York Times APIs](http://developer.nytimes.com/docs)
 + [Google APIs](https://developers.google.com/apis-explorer/#p/)
 + [Twitter APIs](https://dev.twitter.com/rest/public)
 + [Facebook Social Graph API](https://developers.facebook.com/docs/graph-api)
 + [Instagram API](https://instagram.com/developer/endpoints/)
 + [Foursquare API](https://developer.foursquare.com/docs/)
 + [GitHub API](https://developer.github.com/v3/)
 + [Yelp API](https://www.yelp.com/developers/documentation/v2/overview)
 + [Flickr API](https://www.flickr.com/services/api/)
 + [Getty Images API](http://developers.gettyimages.com/en/)

Some APIs do not require authentication, while others do. Follow the documentation of each respective API for usage instructions and examples. Ask the Internet or an instructor for help as necessary.

Use an API explorer, browser, or programming language to make network requests to one or more API endpoint URLs, and study the structure and nature of the data returned by each.

Design a relational database to store API data.

### Recommended Methodology

 1. Write a comprehensive list of sentences which demonstrate your understanding of the business logic conveyed by API data. Choose API endpoints of interest, and focus on one at a time. Infer about entities and relationships based on API endpoint documentation.
 + Sketch the design of a **single table** to store all data returned by the API, and fill the table with a comprehensive set of records which convey all possibilities of attribute value combinations.
 + Based on the written descriptions and table data, perform the normalization process to arrive at a final database design: identify attribute dependencies; cluster logical attribute groupings into distinct entities; identify primary keys; identify and classify relationships between entities; and identify foreign keys.
 + Sketch a clear and concise diagram to convey the final design of your database.

<hr>

## Follow-up Exercises

Write API data to one or more .csv files in an automated, programmatic way.

Store API data in a database in an automated, programmatic way.
