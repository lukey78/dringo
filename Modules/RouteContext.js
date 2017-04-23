var Backend = require("./Backend");
var Observable = require("FuseJS/Observable");

var currentRoutes = Observable();

var emptyRoute = {
    "id": null,
    "name": "",
    "locationId": null,
    "locationName": ""
};

function getRoutes(locationId) {
    console.log("getting route context for location " + locationId);
    Backend.getRoutes(locationId)
        .then(function(newItems) {
            //currentRoutes.replaceAll(newItems);
            currentRoutes.clear();
            newItems.forEach(function(p) {
                currentRoutes.add(p);
            });
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

function createRoute(locationId, name) {
    Backend.createRoute(locationId, name);
    this.getRoutes(locationId);
}

function updateRoute(id, name) {
    Backend.updateRoute(id, name);
    this.getRoutes();
}

function deleteRoute(id) {
    Backend.deleteRoute(id);
    this.getRoutes();
}


module.exports = {
    getRoutes: getRoutes,
    createRoute: createRoute,
    updateRoute: updateRoute,
    deleteRoute: deleteRoute,

    getNewRoute: getNewRoute,
    routes: currentRoutes
};
