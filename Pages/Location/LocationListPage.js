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

module.exports = {
    goBack: goBack,
    chooseLocation: chooseLocation,
    editLocation: editLocation,

    locations: Context.locations
}