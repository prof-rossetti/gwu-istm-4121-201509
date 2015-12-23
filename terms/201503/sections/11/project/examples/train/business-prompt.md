# Train Example Business Prompt

## Overview

The North South East West (NSEW) passenger rail-road system travels throughout the country.  NSEW would like to become the premier passenger train system in the country and expand the number of routes, and increase their passenger base.  However, NSEW needs some assistance with their reservation system: they are losing both passengers and money.  The company decides that they need some database help and hire a consultant from ISTM 4121.

## Basic Operations

The availability of train routes is determined by the passenger demand.  Therefore, for instance, some routes may be offered several times a day, some are offered once a day, some only on weekdays and some only once a week. Routes that are offered several times a day each have their own unique identification number.  The same number is used on different days – therefore in order to identify a trip both the identification number and date are required to specify the trip. Routes are determined by the initial (from) station and the final destination (to) station. Although some trains are express, each route has stops along the way.

A train is defined as a sequence of cars. Each car has a unique number and trains may consist of cars that may also be added to other trains at a different time.  The trains may be different lengths (contain different number of cars) and with different number of reserved seats. A car may be designated as first class, coach class or the café car. A train is designated for a route, and a car is not dedicated to a specific route. The first class cars have fewer seats than the coach cars.  

A reservation may be one-way or round-trip.  Once the number of seats is specified, a reservation is only completed if the number of seats still available is equal to or greater than the requested number of seats. A reservation may be from the initial station to the final destination, or stops along the way. A passenger may also board at one of the intermediate stops. The total number of seats is the total number for that class of travel – all the coach seats or all the first class seats.  First class passengers are assigned seats. Coach passengers are guaranteed a seat, but a seat is not specifically assigned: they can sit in any car that is not first class. There is a frequent-rider program.

When making a reservation, the passenger must select their initial stop and their final stop and how many passengers are traveling. The price of the reservation must be calculated based on one-way or round trip, class of travel, criteria or special promotions and the number of seats and the distance traveling. The price of a ticket varies depending upon class, but also varies with the following criteria:  adult, senior, child, student, disability, military (active) and veteran. At times, NSEW also has special promotions with discount tickets.  Tickets can be issued electronically or on paper.

Once a reservation is completed, the number of seats available, either coach or first, must be adjusted.

At present, all data is stored in an outdated flat file. It is hard to update, and often passengers are either sold tickets and have no seats, or are told there are no seats available, in which case the company is losing money.

## Information Requirements

NSEW needs to keep track of high demand routes and times, and can add cars to those trains. They need to be able to add new routes, or additional trains/times for an existing route.  If a route is not doing well, or a specific time is not popular, the route needs to be cancelled or modified. For instance, if there are 10 different scheduled trains from DC to Philadelphia and the one leaving DC is only half filled, that train time might be eliminated. If the daily train to Chicago is not being utilized fully, the schedule may change to every-other day or just Fridays and Sunday.  

Information is kept about each of the train cars.  Some of the information recorded deals with maintenance issues, age of the car, number of seats and which train schedules it has been assigned.

They also, of course, need to keep track of the passengers –the frequent-rider program – so they can offer discounts or notify them of special fares or changes/additions to routes.  Passengers can accumulate points for either free tickets or upgrades.

### Inputs

 + Train Schedules
 + Passenger Information Form
 + Ticket Sales
 + Train Car inventory

### Outputs

 + A list of all passengers
   + All the passengers
   + By type of reservation (first, coach, special category)
     + Could be different for each reservation
   + By number of reservations
   + By usual boarding station
   + Amount spent at NSEW
     + Calculated not stored
   + Any other relevant frequent-rider program information
 + A list of the stations
   + Routes that originate at that station
   + Routes that terminate at that station
   + Routes that stop at that station
 + A list of all routes
   + Stops along the route
   + Cost of travel
     + For entire route
     + For part of the route
     + One-way or round-trip
   + Schedule/times for each route
   + Number of seats occupied for each time for each route
     + Number of reservations
   + The total income for each route (which were profitable)?
     + This is calculated not stored
 + A list of all the train cars
   + What routes it is/has been used on
   + First class or coach car

### Updates/Transactions

 + Adding a passenger
 + Adding a reservation
 + Deleting a reservation
 + Modifying a reservation
 + Adding a route
 + Deleting a route
 + Changing the times for a route
 + Adding a new train car

## Business Logic Assumptions

 + Passengers may take many different routes on different days
 + Each train car has its own number
 + Each scheduled train has its own number but may travel on different days. For example: The NW Polar train may go from Seattle to Anchorage every Friday at noon.

<hr>

source: Granger
