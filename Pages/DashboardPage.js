var Context = require("Modules/ProfileContext");
var Observable = require("FuseJS/Observable");

var username = Observable("");

var selectedLocation = this.Parameter.map(function(p) {
    return p.selectedLocation;
});
var locationName = selectedLocation.map(function(x) { return x.name; });

var noLocationSelected = Observable(function() {
    return (selectedLocation.length == 0);
});

function gotoLocationList() {
    router.push("locationList");
}

Context.getProfile().then(function(profile) {
    username.value = profile.username;
});

module.exports = {
    username: username,

    noLocationSelected: noLocationSelected,
    selectedLocation: selectedLocation,
    selectedLocationName: locationName,

    gotoLocationList: gotoLocationList
};