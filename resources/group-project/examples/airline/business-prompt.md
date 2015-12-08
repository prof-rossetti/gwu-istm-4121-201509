# Airline Example Business Prompt

Little City Air Line (LCAL) is a small but profitable passenger airline company.  It manages a set of customers and a set of flights using an outdated manual system.  There are several other airlines that LCAL would like to acquire or merge with.  However, their current system cannot be easily expanded, and LCAL has decided to hire a database consultant from ISTM 4121 to streamline operations with a database.

## Basic Operations

Each flight is characterized by the airports of arrival and departure, although some flights may have multiple stops.  Some are daily flights, while others only fly on specific days of the week or weekend.   The usage depends upon the connecting cities and the need for service.  The company also keeps track of the planes and the mileage accumulated.  

A reservation may be one-way or round-trip.  Once the number of seats is specified, a reservation is only completed if the number of seats still available is equal to or greater than the requested number of seats.  The total number of seats is the total number for that class of travel – all the coach seats or all the first class seats.  

When making a reservation, the passenger must select their initial airport, destination and how many are traveling.  At times, the passenger must transfer to another flight at an interim airport. The price of the reservation must be calculated based on one-way or round trip, class of travel, criteria or special promotions and the number of seats and the distance traveling.  Tickets can be issued electronically or on paper.

Once a reservation is completed, the number of seats available, either coach or first, must be adjusted.

At present, all data is stored in an outdated flat file.  It is hard to update, and often passengers are either sold tickets and have no seats, or are told there are no seats available, in which case the company is losing money.  Currently, the company is not concerned about information about pilots and attendants: that is the next phase of the system.


## Information Requirements

Little City Airline needs to keep track of all their flights, reservations and passengers.

Information is kept about each of the airplane.  Some of the information recorded number of seats, miles flown and which flight schedules it has been assigned.

They also, of course, need to keep track of the passengers –the frequent-flyer program – so they can offer discounts or notify them of special fares or new flights.  Passengers can accumulate points for either free tickets or upgrades.

### Inputs

 + Flight Schedules
 + Passenger Information Form
 + Ticket Sales
 + Airplane inventory

### Outputs

 + A list of all passengers
   + By type of reservation (first, business, premium economy, economy)
     + Could be different for each reservation
   + By number of reservations
   + By preferred airport
   + Amount spent at LCAL
     + Calculated not stored
   + All the passengers in the frequent-flyer program
 + Any other relevant frequent-flyer program information
 + A list of all the airports
   + Flights that originate at that airport
   + Flights that fly into that airport
 + A list of all flights
   + Stops along the flight – if any
   + Cost of travel
     + For entire flight
     + One-way or round-trip travel
   + Schedule/times for each flight
   + Number of seats occupied for each time for each route
     + Number of reservations
   + The total income for each flight (which were profitable)?
     + This is calculated not stored
 + A list of all the airplanes
   + What flight it is/has been used on
   + Number of seats in each class category

### Transactions/Updates

 + Adding a passenger
 + Creating a reservation
 + Cancelling a reservation
 + Adding a flight
 + Deleting a flight
 + Changing the times for a flight
 + Adding an airplane

## Business Logic Assumptions

 + Passengers may take many different flights on the same or different days.
 + Each airplane has its own make, model and number.
 + The same plane may fly to one city one day and to another city on another day.

<hr>

source: Granger
