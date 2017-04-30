var Context = require("Modules/RouteContext");
var Observable = require("FuseJS/Observable");

var route = this.Parameter;

var id = route.map(function(l) { return l.id });
var locationId = route.map(function(l) { return l.locationId });
var locationName = route.map(function(l) { return l.locationName });

var name = route.map(function(l) { return l.name });
var description = route.map(function(l) { return l.description });
var ratingId = route.map(function(l) { return l.rating_id });
var sector = route.map(function(l) { return l.sector });
var author = route.map(function(l) { return l.author });
var height = route.map(function(l) { return l.height });
var bolts = route.map(function(l) { return l.bolts });
var dateFrom = route.map(function(l) { return l.dateFrom });
var active = route.map(function(l) { return l.active });


ratingId.onValueChanged(module, function(val) {
    console.log("ratingId value changed: " + val);
});


function save() {
    if (id.value > 0) {
        Context.updateRoute(id.value, name.value, description.value, ratingId.value, sector.value, author.value, height.value, bolts.value, dateFrom.value, active.value);
    } else {
//        Context.createRoute(locationId.value, name.value, description.value, ratingId.value, sector.value, author.value, height.value, bolts.value, dateFrom.value, true);
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
    description: description,
    ratingId: ratingId,
    sector: sector,
    author: author,
    height: height,
    bolts: bolts,
    dateFrom: dateFrom,
    active: active,

    availableRatings: Context.availableRatings
};