var Backend = require("./Backend");
var Observable = require("FuseJS/Observable");

var currentRoutes = Observable();
var availableRatings = Observable();

var emptyRoute = {
    "id": null,
    "name": "",
    "locationId": null,
    "locationName": "",
    "description": "",
    "ratingId": 5,
    "sector": "",
    "author": "",
    "height": "",
    "bolts": "",
    "dateFrom": null,
    "active": false
};

function getRoutes(locationId) {
    console.log("getting route context for location " + locationId);
    Backend.getRoutes(locationId)
        .then(function(newItems) {
            currentRoutes.clear();
            newItems.forEach(function(i) {
                i.active = (i.active == 1);
                currentRoutes.add(i);
            })
        })
        .catch(function(error) {
            console.log("Couldn't get routes: " + error);
        });
}

function getNewRoute(locationId, locationName) {
    emptyRoute.locationId = locationId;
    emptyRoute.locationName = locationName;
    return emptyRoute;
}

function createRoute(locationId, name, description, rating_id, sector, author, height, bolts, dateFrom, active) {
    Backend.createRoute(locationId, name, description, rating_id, sector, author, height, bolts, dateFrom, active);
    this.getRoutes(locationId);
}

function updateRoute(id, name, description, rating_id, sector, author, height, bolts, dateFrom, active) {
    Backend.updateRoute(id, name, description, rating_id, sector, author, height, bolts, dateFrom, active);
    this.getRoutes();
}

function deleteRoute(id) {
    Backend.deleteRoute(id);
    this.getRoutes();
}

function getRatings() {
    console.log("fetching ratings");
    Backend.getRatings()
        .then(function(newItems) {
            availableRatings.clear();
            newItems.forEach(function(i) {
                i.name = i.french + " | " + i.uiaa + " | " + i.usa; 
                availableRatings.add(i);
            })
        })
        .catch(function(error) {
            console.log("Couldn't get routes: " + error);
        });
}

getRatings();


module.exports = {
    getRoutes: getRoutes,
    createRoute: createRoute,
    updateRoute: updateRoute,
    deleteRoute: deleteRoute,

    getNewRoute: getNewRoute,
    availableRatings: availableRatings,
    routes: currentRoutes
};
