var Context = require("Modules/LocationContext");
var Observable = require("FuseJS/Observable");

var location = this.Parameter;

var id = location.map(function(l) { return l.id });
var name = location.map(function(l) { return l.name });
var city = location.map(function(l) { return l.city });
var indoor = location.map(function(l) { return l.indoor });
var routeCount = location.map(function(l) { return l.routeCount });



function save() {
    if (id.value > 0) {
        Context.updateLocation(id.value, name.value, city.value, indoor.value);
    } else {
        Context.createLocation(name.value, city.value, indoor.value); 
    }
    router.goBack();
    location.value = {};
}

function doDelete() {
    Context.deleteLocation(id.value);
    router.goBack();
}

function cancel() {
    router.goBack();
}

function editRoutes() {
    //console.log("routing to routeList with location id " + id.value);
    router.push("routeList", { "locationId": id.value, "locationName": name.value });
}

module.exports = {
    cancel: cancel,
    save: save,
    delete: doDelete,

    editRoutes: editRoutes,

    id: id,
    name: name,
    city: city,
    indoor: indoor,

    routeCount: routeCount
};