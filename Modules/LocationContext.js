var Backend = require("./Backend");
var Observable = require("FuseJS/Observable");

var currentLocations = Observable();

var emptyLocation = {
    "id": null,
    "name": "",
    "city": "",
    "indoor": false,
    "routeCount": 0
};

function getLocations() {
    Backend.getLocations()
        .then(function(newLocations) {

            currentLocations.clear();
            newLocations.forEach(function(loc) {
                loc.indoor = (loc.indoor == 1);
                currentLocations.add(loc);
            });
        })
        .catch(function(error) {
            console.log("Couldn't get locations: " + error);
        });
}

function getNewLocation() {
    return emptyLocation;
}

function createLocation(name, city, indoor) {
    Backend.createLocation(name, city, indoor ? 1: 0);
    this.getLocations();
}

function updateLocation(id, name, city, indoor) {
    Backend.updateLocation(id, name, city, indoor ? 1 : 0);
    this.getLocations();
}

function deleteLocation(id) {
    Backend.deleteLocation(id);
    this.getLocations();
}

getLocations();

module.exports = {
    getLocations: getLocations,
    createLocation: createLocation,
    updateLocation: updateLocation,
    deleteLocation: deleteLocation,

    getNewLocation: getNewLocation,
    locations: currentLocations
};
