var sqlite = require('SQLite');
var db = sqlite.open("dringo.sqlite");


var locations = [
    {
        "id": 0,
        "name": "ImPULSIV Freizeitcenter",
        "city": "Weil am Rhein",
        "indoor": 1
    },
    {
        "id": 1,
        "name": "Eppenberg",
        "city": "bei Eppenberg",
        "indoor": 0
    },
    {
        "id": 2,
        "name": "Gempen",
        "city": "...",
        "indoor": 0
    },
    {
        "id": 3,
        "name": "Sonstige Halle",
        "city": "irgendwo",
        "indoor": 1
    }
];



function initializeDatabase() {
    db.execute("create table if not exists userprofile (id integer primary key, username varchar(200), email varchar(200))");
    db.execute("create table if not exists location (id integer primary key autoincrement, name varchar(200), city varchar(200), indoor integer)");
}

function setUserProfile(username, email) {
    db.execute("insert or replace into userprofile values (?, ?, ?)", 0, username, email);    
}

function getUserProfile() {
    return new Promise(function(resolve, reject) {
        var r =  db.query("select id, username, email from userprofile");
        if (r.length == 0) {
            reject();
        }
        resolve(r[0]);
    });
}

function getLocations() {
    return new Promise(function(resolve, reject) {
        //var r =  db.query("select * from location");
        resolve(locations);
    });
}

function updateLocation(id, name, city, indoor) {
    for (var i=0; i < locations.length; i++) {
        var location = locations[i];
        if (location.id == id) {
            location.name = name;
            location.city = city;
            location.indoor = indoor;
            break;
        }
    }
}

initializeDatabase();

module.exports = {
    getUserProfile: getUserProfile,
    setUserProfile: setUserProfile,

    getLocations: getLocations,
    updateLocation: updateLocation
}
