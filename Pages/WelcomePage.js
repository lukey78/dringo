var Context = require("Modules/ProfileContext");
var Observable = require("FuseJS/Observable");

var username = Observable("");
var email = Observable("");

var visibilityOfStartControls = Observable("Collapsed");
var visibilityOfRegisterControls = Observable("Collapsed");
var visibilityOfRegisterButton = Observable(function() {
    if (username.value.length > 3) {
        return "Visible";
    }
    return "Hidden";
});

function displayGreetingOrRegister() {
    Context.getProfile()
        .then(function(profile) {
            visibilityOfRegisterControls.value = "Collapsed";
            visibilityOfStartControls.value = "Visible";
            username.value = profile.username;
            email.value = profile.email;
        })
        .catch(function(error) {
            visibilityOfRegisterControls.value = "Visible";
            visibilityOfStartControls.value = "Collapsed";
        });
}

function start() {
    router.goto("dashboard");
}

function register() {
    Context.updateProfile(username.value, email.value);
    displayGreetingOrRegister();
}

displayGreetingOrRegister();

module.exports = {
    start: start,
    register: register,

    username: username,
    email: email,

    visibilityOfStartControls: visibilityOfStartControls,
    visibilityOfRegisterControls: visibilityOfRegisterControls,

    visibilityOfRegisterButton: visibilityOfRegisterButton
};
