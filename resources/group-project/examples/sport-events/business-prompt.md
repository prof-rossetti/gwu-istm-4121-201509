# Athletic Events Example Business Prompt

Ryan Johnson, owner and manager of Athletic Events Extraordinaire (AEE) has contacted your team for help in solving some business problems. AEE is in the business of managing and marketing a variety of athletic events, including running races, bike events and triathlons. Ryan's company has grown to the point where he and his small staff can no longer manage the business without a database that's more efficient than the paper files now in use.

## Basic Operations

AEE has two types of customers. First, for some events, an organization pays AEE to organize, manage and help promote an event. The sponsoring organization pays AEE a flat fee and then keeps the remaining revenue for their treasury. For example, AEE might help a local service organization such as the Capital Hill Bikes sponsor on a road race.  AEE would use their expertise to organize, manage and promote the race.  AEE's fee would cover them organizing the volunteers, securing a location for the race, setting up the course, timing the race and mailing results to the participants. AEE also holds events where they are the sole sponsor, no outside organization is involved. Ryan wants the system to help him keep up with sponsor information including what events they have sponsored, the organization's name, address, phone and a contact name.

AEE's other customer base is comprised of participants in past AEE events. This list represents two important income streams for AEE. First, the participant file provides a valuable source of prospects for every event that AEE puts on. Second, AEE sells the list to other organizations such as sporting goods stores, and bicycle manufacturers.  Some of these organizations may also sponsor an event, or just use the list for marketing. AEE needs to be able to keep track information regarding all participants including, their name, address, age, gender, and occupation. In addition, AEE needs to create lists according to the type of event. For example, a bicycle manufacturer might want a list of individuals who participated in cycling events and triathlons, while a maker of swim goggles might want to limit their list to triathlon participants. Finally, Ryan needs to be able to list participants for each event.  

AEE also has the Athlete's Club which provides certain benefits to club members, such as discounted event registrations, a newsletter, discounts from various businesses and priority check-in at events. Ryan wants the system to keep track of information about these members including when they joined, their birthdays, and their renewal date. The members have participated in one of the events organized by AEE.

In order to be efficient, AEE needs to track event locations. If the database can store information such as the cost of using a location, the location's address, a contact for obtaining permission to use the location, and the governmental agency to contact for permits, a great deal of time is saved in searching for locations for new events. AEE also keeps track of locations that have been used in the past, including the events for which the location was used.

For each event, the system needs to store general information such as the date, sponsor, starting time and location. AEE needs to keep information specific to the type of event. For running races, AEE wants to keep the distance and whether or not the course is U.S. Track and Field Association certified. For cycling events, the system needs to track the distance and whether the event is a race or a recreational ride. Finally, for triathlons, the system must store the swim, bike and run distances. AEE is not concerned with the events outcome – the winners and times.

## Information Requirements

AEE needs to keep track of the organizations, events, participants, locations and club members.

### Outputs

 + A list of participants...
   + By type of event entered (they can enter different types of events)
   + By number of events
   + By amount spent on events or each type of event
     + Which type generates the most revenue?
     + Calculated not stored
 + A list of all organizations
   + By type of organization
   + By type of event sponsored
   + By number of events sponsored (the most??)
   + How much they paid AEE in total
     + Calculated not stored
 + A list of all events
   + By location and date
   + By type of event
   + By distance?
   + By organization sponsored
   + The most popular
     + Number of participants
     + Amount of revenue for AEE
 + A list of all locations
   + The cost for renting the location
     + Based on type of event
   + By state location
   + By government agency
   + Total amount spent for renting
     + A particular location
     + All locations

### Updates/Transactions

 + Adding a participant
 + Deleting a participant
 + Adding an organization
 + Deleting an organization
 + Adding an event
 + Deleting an event
 + Adding a location
 + Deleting a location

## Business Logic Assumptions

 + Participants many enter many different types of events
 + An event may change locations
 + Organizations may offer different type of events based on time of year or only yearly
 + Club members must have participated in at least one event

<hr>

source: Granger
