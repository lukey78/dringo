var Context = require("Modules/RouteContext");
var Observable = require("FuseJS/Observable");

var route = this.Parameter;

var id = route.map(function(l) { return l.id });
var locationId = route.map(function(l) { return l.locationId });
var locationName = route.map(function(l) { return l.locationName });
var name = route.map(function(l) { return l.name });
var routeCount = route.map(function(l) { return l.routeCount });

function save() {
    if (id.value > 0) {
        Context.updateRoute(id.value, name.value);
    } else {
        Context.createRoute(locationId.value, name.value); 
    }
    router.goBack();
    route.value = {};
}

function doDelete() {
    Context.deleteRoute(id.value);
    router.goBack();
}

function goBack() {
    router.goBack();
}

module.exports = {
    goBack: goBack,
    save: save,
    delete: doDelete,

    id: id,
    locationId: locationId,
    locationName: locationName,
    name: name,
    routeCount: routeCount
};