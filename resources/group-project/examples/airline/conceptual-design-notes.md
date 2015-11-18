# Airline System

## Business Problem(s)

The current Flight Reservation System leads to loss of ticket revenue.

## Conceptual Design Notes

### Entities

#### `Flight`

  + May stop at one or more airports
  + Has multiple costs, depending on other factors
  + Has departure time and arrival time
  + Has many seats available for reservation
  + has a number of seats available, which is calculated based on (airplane total seats available – number of seats reserved)
  + has one arrival airport
  + has one destination airport
  + may stop at one or more airports

#### `Reservation`

  + each is either one-way or round-trip
  + each is for one or more tickets
  + depends on seat availability calculation
  + specifies a requested number of seats (number of travelers)
  + specifies one or more flights
  + specifies origin airport
  + specifies destination airport
  + has a price, which is calculated based on:
    + “one-way” vs “round-trip”
    + “first-class” vs “coach”
    + special promotions
    + number of seats (available at time of reservation?)
    + distance traveled (depends on origin and destination airport)
  + results in issue of ticket(s), which can be issued by “electronic” or “paper” media

#### `Passenger`

  + Frequent flyer program participation
  + Frequent flyer number/id
  + Frequent flyer miles balance
  + Other info which comes from a form
  + Has one or more reservations
  + Has preferred airport (calculated from reservations)
  + Has total expenditure amount (calculated from reservations)
  + Can take multiple flights/ make many reservations on the same day

#### `Airplane`

  + Total Number of seats available (by class)
  + Miles flown (updated automatically from on-flight system info?)
  + Flight schedule assignment
  + Make
  + Model
  + Number

#### `Flight Schedule`

  + some flights are scheduled to recur on certain day(s) of the week
  + depends on demand

#### `Ticket`

  + Reserves a specific seat, each of which is categorized into one of the following classes/ sub-types:
    + "First Class"
    + "Business Class"
    + "Premium Economy"
    + "Economy"

#### `Airport`

  + Has many origin flights and many destination flights each day

#### `Pilot` (Future Scope)

#### `Flight Attendant` (Future Scope)
