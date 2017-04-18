var Context = require("Modules/LocationContext");
var Observable = require("FuseJS/Observable");

var location = this.Parameter;

var id = location.map(function(l) { return l.id });
var name = location.map(function(l) { return l.name });
var city = location.map(function(l) { return l.city });
var indoor = location.map(function(l) { return l.indoor });

function save() {
    Context.updateLocation(id.value, name.value, city.value, indoor.value);
    router.goBack();
}

function goBack() {
    router.goBack();
}

module.exports = {
    goBack: goBack,
    save: save,

    id: id,
    name: name,
    city: city,
    indoor: indoor
};