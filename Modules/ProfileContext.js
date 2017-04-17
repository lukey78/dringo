var Backend = require("./Backend");
var Observable = require("FuseJS/Observable");


function getProfile() {
    return Backend.getUserProfile();
}

function updateProfile(username, email) {
    Backend.setUserProfile(username, email);
}

module.exports = {
    getProfile: getProfile,
    updateProfile: updateProfile
}