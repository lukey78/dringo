var Backend = require("./Backend");
var Observable = require("FuseJS/Observable");

var currentLocations = Observable();

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

function createLocation(name, city, indoor) {

}

function updateLocation(id, name, city, indoor) {
    for (var i=0; i < currentLocations.length; i++) {
        var loc = currentLocations.getAt(i);
        if (loc.id === id) {
            loc.name = name;
            loc.city = city;
            loc.indoor = indoor;
            currentLocations.replaceAt(i, loc);
        }
    }

    Backend.updateLocation(id, name, city, indoor);
}

function deleteLocation(id) {
}

getLocations();

module.exports = {
    getLocations: getLocations,
    createLocation: createLocation,
    updateLocation: updateLocation,
    deleteLocation: deleteLocation,

    locations: currentLocations
};
