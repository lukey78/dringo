var Context = require("Modules/ProfileContext");
var Observable = require("FuseJS/Observable");

var username = Observable("");

Context.getProfile().then(function(profile) {
    username.value = profile.username;
});

module.exports = {
    username: username
};