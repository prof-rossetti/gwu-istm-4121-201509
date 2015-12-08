# Art Gallery Example Business Prompt

## Overview

The Art Gallery in Foggy Bottom accepts original artworks by living contemporary artists that are sold on a commission basis. It currently offers work from about a hundred artists and sells approximately a thousand pieces each year. The average selling price is several thousand dollars. There are about five thousand customers who have purchased pieces from the gallery. The sales staff consists of a gallery owner, and four sales associates. Their activities are supported by an office staff of two people.

## Basic Operations

When an artist wishes to sell works, he or she contacts the gallery. The owner visits the artist’s studio and selects the works to be sold in the gallery. If the artist is well known to the gallery, this visit may be eliminated, and the works may be accepted automatically. An artist may submit one or several pieces for sale at a time. The artist, working with the owner, identifies an asking price for each work. The sales staff tries to sell the work at that price, or as close to that price as possible. Customers may negotiate with salespeople, so the actual selling price may be below the asking price. If it is below the asking price, the final selling price must be approved by the artist. The commission charged by the gallery is 10% of the selling price. The gallery splits the commission with the salesperson making the sale. Any salesperson can sell any work in the gallery; however, customers work with a single salesperson when they buy each piece, so that the salesperson’s portion of the commission for a single piece goes to only one salesperson.

The gallery promotes the works by holding exhibits featuring various pieces. The exhibits are advertised in newspapers and other media, and potential customers are sent personal invitations. A showing is actually a reception that provides an opportunity for the public to see the pieces and to meet the artist or artist whose works are featured. A “one-man-show” features works by a single artist, while a themed show features works by multiple artists centered on a single theme, such as “Mediterranean Seascapes.” Works of art that have been featured at a showing remain on display until they are sold or returned to the artist. A piece may be purchased at the showing or at any time afterward.  Occasionally, a work may be purchased from the gallery prior to the show and included in the exhibit, marked as “Sold” to provide the public with a better view of the artist’s work. Not all works are promoted through showings. Some are simply displayed in the gallery. If a work has been at the gallery for six months without being sold, the owner contacts the artist and returns the work, unless both agree to continue displaying the work for an additional period of time.

At present, all data relating to artists, unsold works, shows, sales, and customers is kept in paper files. A description card is made up for each work currently on exhibit, and placed on the wall or floor next to the piece.  A copy of the card is also placed in a file. The card lists the artist’s name, title of the work, year created, type, medium, style, size and asking price. Each work is an original, one-of-a-kind piece produced by a single artist. No two artists have the same name.  The title of the work must be unique to the artist, but may not be totally unique to the gallery. For example, many artists may have works such as “Composition 5” but no artist has two works with that title. No prints or reproductions are sold at the gallery. An artist can produce several works in the same year. The type refers to the type of work: painting, sculpture, collage and so forth. The medium refers to the materials used in the work: oil, watercolor, acrylic, marble, or mixed. A piece using more than one medium is categorized as mixed. The style means the style of the work: contemporary, impressionist, folk or other. The size is expressed in units appropriate for the work: for example a painting, the size would be the number of inches in width and height, while a sculpture would have three dimensions.

When a purchase is made, a receipt is issued for the buyer, a payment check and stub are made out for the artist, the commission is allocated between the gallery and the salesperson, and all paper files are updated individually.

## Information Needs

In addition to the data about artists, artworks, shows, sales and customers currently kept in paper files, there are other information needs. For income tax purposes, the gallery is required to report the amount of sales for each artist each year, a task that is very time-consuming at present. The owner realizes that a database could provide more information than is available now from the paper files.  She also wants to capture data not currently stored. She would like to keep track of customers who have made purchases and information about the amount of their purchases last year and so far this year. She would like to be able to send mailings to potential customers, and to record their preferences.  

All current input documents and reports were collected.

### Inputs

 + Artist Information Form
 + Artwork Information Form
 + Sales Invoice
 + Mailing list form – for potential customers to sign up for a mailing list

### Outputs

 + Active Artists Summary Report – all artists, with sales for last year and this year.
 + Individual Artists Sales Report – from date specified – the status of the work can be sold, returned or for sale.  If sold, the date and price are listed. If returned, the return date is listed, if still for sale, the asking price is listed.
 + Works for Sale – currently for sale, with a show if any. Total of all asking prices.
 + Buyers Sales Report – from invoices, buyers in alphabetical order by last name with the works they purchased this year in order by date of purchase.
 + Preferred Customer Report – potential and current customers – by artist is shown – to target customers with preferences for a particular artist – match customer for showings. Could also be by type, medium, style or theme?
 + Salesperson Performance Report
 + Payment Stub for Sale of Artwork
 + Art Show Details

### Updates/Transactions

 + Adding a new artist
 + Adding a new work of art
 + Sale – transaction
 + Adding a potential customer

## Business Logic Assumptions

 + Artists’ names are unique, but customer names are not.
 + For privacy reasons, only people who receive payments from the gallery are asked to provide their social security numbers (tax purposes). Therefore, the gallery keeps social security numbers for salespersons and artists, but not for buyers or potential customers.
 + An artist may have many works for sale at the gallery
 + Each work is an original, one-of-a-kind piece. No prints or reproductions are sold.
 + Two works of art can have the same title, but the combination of title and artist name is unique.
 + A work of art is sold by the gallery only once. The gallery does not re-sell its own works.
 + A work of art might appear in more than one show. Some works do not appear in any show.
 + No payroll information is included in the database, only commission information.


<hr>

source: Granger
