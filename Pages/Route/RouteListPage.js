var Context = require("Modules/RouteContext");
var Observable = require("FuseJS/Observable");

var locationId = this.Parameter.map(function(p) {
    return p.locationId;
});
var locationName = this.Parameter.map(function(p) {
    return p.locationName;
});


locationId.onValueChanged(module, function(p) {
    Context.getRoutes(p);
});

function goBack() {
    router.goBack();
}

function editRoute(item) {
    var selectedItem = item.data;
    router.push("editRoute", selectedItem);
}

function newRoute() {
    router.push("newRoute", Context.getNewRoute(locationId.value, locationName.value));
}

module.exports = {
    goBack: goBack,
    editRoute: editRoute,
    newRoute: newRoute,

    locationName: locationName,

    routes: Context.routes
};