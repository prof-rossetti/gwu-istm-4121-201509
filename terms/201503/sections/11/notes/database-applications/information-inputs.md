# Information Inputs

Manual (paper and computer-based forms)

Programmatic (scripts)

## Considerations

### Data Validation

### Data Integrity

### Data Structures

Machines and humans communicate data in various structured formats.

Includes
 relational data in .csv format
 as well as "No-SQL" nested representations of data objects, like XML and JSON.

#### CSV

```` sh
curl http://www.gtfs-data-exchange.com/api/agencies?format=csv
````

```` csv
date_last_updated,dataexchange_url,date_added,is_official,feed_baseurl,name,area,url,country,state,license_url,dataexchange_id 1354248333.0,http://www.gtfs-data-exchange.com/agency/a-reich-gmbh-busbetrieb/,1354248333.0,False,,A. Reich GmbH Busbetrieb,,http://www.vbb.de,,,,a-reich-gmbh-busbetrieb 1443922673.0,http://www.gtfs-data-exchange.com/agency/abq-ride/,1340739867.0,True,http://data.cabq.gov/transit/gtfs/google_transit.zip,ABQ Ride,Albuquerque,http://myabqride.com,United States,New Mexico,,abq-ride 1424279305.0,http://www.gtfs-data-exchange.com/agency/ac-transit/,1312587614.0,True,http://www.actransit.org/google-transit-feed-specification/?did=5,AC Transit,,http://www.actransit.org,United States,California,http://www.actransit.org/data-terms-and-conditions/,ac-transit 1224261936.0,http://www.gtfs-data-exchange.com/agency/acad/,1224261936.0,False,,ACAD,,http://www.acad.com,United States,New Jersey,,acad 1422493306.0,http://www.gtfs-data-exchange.com/agency/action/,1318475720.0,True,https://www.action.act.gov.au/googletransit/google_transit.zip,ACTION,Canberra,http://www.action.act.gov.au,Australia,ACT,,action 1430328140.0,http://www.gtfs-data-exchange.com/agency/actv-spa/,1430328140.0,False,,ACTV S.p.a,,http://www.actv.it,,,,actv-spa 1406156555.0,http://www.gtfs-data-exchange.com/agency/amat/,1406156555.0,False,,AMAT,,http://www.amat-mi.it,,,,amat 1432564898.0,http://www.gtfs-data-exchange.com/agency/amat-palermo-spa/,1415527028.0,False,,AMAT Palermo S.p.A.,,http://www.amat.pa.it,,,,amat-palermo-spa 1406087670.0,http://www.gtfs-data-exchange.com/agency/amtrak/,1224261936.0,False,,AMTRAK,,http://www.amtrak.com,United States,,,amtrak
````

#### XML

```` sh
curl http://www.capitalbikeshare.com/data/stations/bikeStations.xml
````

```` xml
<stations lastUpdate="1446158431213" version="2.0">
  <station>
    <id>1</id>
    <name>20th & Bell St</name>
    <terminalName>31000</terminalName>
    <lastCommWithServer>1446158277796</lastCommWithServer>
    <lat>38.8561</lat>
    <long>-77.0512</long>
    <installed>true</installed>
    <locked>false</locked>
    <installDate>0</installDate>
    <removalDate/>
    <temporary>false</temporary>
    <public>true</public>
    <nbBikes>6</nbBikes>
    <nbEmptyDocks>4</nbEmptyDocks>
    <latestUpdateTime>1446157955954</latestUpdateTime>
  </station>
  <station>
    <id>2</id>
    <name>18th & Eads St.</name>
    <terminalName>31001</terminalName>
    <lastCommWithServer>1446158390348</lastCommWithServer>
    <lat>38.85725</lat>
    <long>-77.05332</long>
    <installed>true</installed>
    <locked>false</locked>
    <installDate>0</installDate>
    <removalDate/>
    <temporary>false</temporary>
    <public>true</public>
    <nbBikes>4</nbBikes>
    <nbEmptyDocks>7</nbEmptyDocks>
    <latestUpdateTime>1446157072777</latestUpdateTime>
  </station>
  <station>
    <id>3</id>
    <name>20th & Crystal Dr</name>
    <terminalName>31002</terminalName>
    <lastCommWithServer>1446158424877</lastCommWithServer>
    <lat>38.856214</lat>
    <long>-77.049828</long>
    <installed>true</installed>
    <locked>false</locked>
    <installDate>0</installDate>
    <removalDate/>
    <temporary>false</temporary>
    <public>true</public>
    <nbBikes>4</nbBikes>
    <nbEmptyDocks>11</nbEmptyDocks>
    <latestUpdateTime>1446157637368</latestUpdateTime>
  </station>
</stations>
````

#### JSON

```` sh
curl http://api.citybik.es/v2/networks
````

```` json
{
  "network": {
    "company": [
      "PBSC",
      "Alta Bicycle Share, Inc"
    ],
    "href": "/v2/networks/capital-bikeshare",
    "id": "capital-bikeshare",
    "location": {
      "city": "Washington, DC",
      "country": "US",
      "latitude": 38.8967584,
      "longitude": -77.03701629999999
    },
    "name": "Capital BikeShare",
    "stations": [
      {
        "empty_slots": 4,
        "extra": {
          "installDate": "0",
          "installed": true,
          "latestUpdateTime": "1446157955954",
          "locked": false,
          "name": "20th & Bell St",
          "removalDate": "",
          "temporary": false,
          "terminalName": "31000",
          "uid": 1
        },
        "free_bikes": 6,
        "id": "13a08d3d6015b722c2df3fad76f15887",
        "latitude": 38.8561,
        "longitude": -77.0512,
        "name": "31000 - 20th & Bell St",
        "timestamp": "2015-10-29T22:44:28.618Z"
      },
      {
        "empty_slots": 7,
        "extra": {
          "installDate": "0",
          "installed": true,
          "latestUpdateTime": "1446157072777",
          "locked": false,
          "name": "18th & Eads St.",
          "removalDate": "",
          "temporary": false,
          "terminalName": "31001",
          "uid": 2
        },
        "free_bikes": 4,
        "id": "f6738240b9295f642cc22bdcfa7db14c",
        "latitude": 38.85725,
        "longitude": -77.05332,
        "name": "31001 - 18th & Eads St.",
        "timestamp": "2015-10-29T22:44:28.626Z"
      }
    ]
  }
}
````
