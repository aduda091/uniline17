# Uniline 2017 - Kalkulacija cijene turističkog smještaja

### WORK IN PROGRESS

> Full-stack project that calculates the total cost of tourist accomodation.
> Using Laravel PHP framework and Vue.js

Hosted at [Heroku](http://uniline-17.herokuapp.com/)

## Endpoints
### /api
```bash
GET /properties     // List all properties
```
```bash
GET /properties/:id // Returns all info about the selected property 
```
```bash
GET /units          // List all units 
```
```bash
GET /units/:id      // Returns all info about the selected unit 
```
```bash
POST /calculate     //  Returns the requested calculations
```

(...) **work in progress**

## TODO:
* Finish the user frontend (smoother UX, animations,transitions)
* Proper cost calculation (with error checking)
* Admin frontend
* CRUD functionality for all resources



