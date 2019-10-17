# Food Truck Finder

## Challenge 
Create a service (front-end + back-end) that tells the user what food trucks might be found near a specific location on a map.



## User Guide

This app lets you find food truck that may be near a specific location on a map.
Link to application: https://dry-plains-17061.herokuapp.com/

## UI
Map shows truck location. An icon will represent a truck in a specific location on any active area of the map.

## Map functionalities
In order to navigate to desired location and find trucks, user can 
* Drag   
* Zoom in 
* Zoom out 
* search address or place

## App Features
Asides from showing a truck location, user can click on a truck icon to view more information about the 
trcuk such as the specific address, type of food and truck schedule.

### Reasonning behind technical choices 
* The MVC framework is used to clearly segregate the back end from the front end. 
* Data is not downloaded and saved on database but comes straight from data.sfgov.org as it is subject to change.
* Trade off: information could render on the map faster if data was saved directly in the database?


# Solution

## Back End

The MVC pattern will be applied

Data is retrived from the [*Mobile Food Facility Permit*] (https://data.sfgov.org/Economy-and-Community/Mobile-Food-Facility-Permit/rqzj-sfat) section of data.sfgov.org

Model and controller classes will inherit from The JSON API class so the data can be retrieved from the MFFP API
wich can then be injected into a Truck object. 

Truck object will have 6 attributes: Name, Address, Permit Status, Type of Food, Truck Hours and location (in terms of lat and lng)
All attributes except location should have default value in case value is not provided

### Scalability
As it stands Data available is only from the City and County of San Francisco. App is built
in a way where it would be possible to add more info to the truck object or add more 
truck locations if data from another area was to become accessible. Database 
would have to be updated without changing other parts of the program


## Fornt End

Using the location attribute, truck icons will be placed on the map. When the icon is clicked, more info will be shown about that specific truck
Hovering over icon will show the name

### Technology used 
Google map javaScriptAPI, Mobile Food Facility Permit API, ruby on rails, JSON, coffeeScript, heroku, git

### Things I would improve
I would Test different aspects as I develop the platform

