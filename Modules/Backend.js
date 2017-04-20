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
        var r =  db.query("select * from location order by name");
        resolve(r);
    });
}

function updateLocation(id, name, city, indoor) {
    db.execute("update location set name=?, city=?, indoor=? where id=?", name, city, indoor, id);
}

function createLocation(name, city, indoor) {
    db.execute("insert into location (name, city, indoor) values (?, ?, ?)", name, city, indoor);
}

initializeDatabase();

module.exports = {
    getUserProfile: getUserProfile,
    setUserProfile: setUserProfile,

    getLocations: getLocations,
    updateLocation: updateLocation,
    createLocation: createLocation
}
