var Context = require("Modules/LocationContext");
var Observable = require("FuseJS/Observable");

function goBack() {
    router.goBack();
}

function chooseLocation(locationItem) {
    var selectedLocation = locationItem.data;
    router.goto("dashboard", { selectedLocation: selectedLocation});
}

function editLocation(locationItem) {
    var selectedLocation = locationItem.data;
    router.push("editLocation", selectedLocation);
}

function newLocation() {
    router.push("newLocation", Context.getNewLocation());
}

module.exports = {
    goBack: goBack,
    chooseLocation: chooseLocation,
    editLocation: editLocation,
    newLocation: newLocation,

    locations: Context.locations
}