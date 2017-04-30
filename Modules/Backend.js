var ratings = require('./Ratings');
var sqlite = require('SQLite');
var db = sqlite.open("dringo.sqlite");

function initializeDatabase() {
    db.execute("create table if not exists userprofile (id integer primary key, username varchar(200), email varchar(200))");
    db.execute("create table if not exists location (id integer primary key autoincrement, name varchar(200), city varchar(200), indoor integer)");
    db.execute("create table if not exists route (id integer primary key autoincrement, location_id integer not null, name varchar(200), description varchar(500), rating_id integer, sector varchar(50), author varchar(100), height varchar(50), bolts varchar(50), dateFrom date, active integer)");
    db.execute("create table if not exists rating (id integer primary key, french varchar(5), uiaa varchar(5), usa varchar(10))");
    initializeRatingTable();
}

function initializeRatingTable() {
    ratings.data.forEach(function(r) {
        db.execute("insert or replace into rating values (?, ?, ?, ?)", r.id, r.french, r.uiaa, r.usa);
    });
}

function getRatings() {
    return new Promise(function(resolve, reject) {
        var r =  db.query("SELECT r.id,r.french,r.uiaa,r.usa FROM rating r ORDER BY r.id");
        resolve(r);
    });
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
        var r =  db.query("SELECT l.id,l.name,l.city,l.indoor,count(route.id) AS routeCount FROM location l LEFT JOIN route ON route.location_id = l.id GROUP BY l.id ORDER BY l.name COLLATE NOCASE");
        resolve(r);
    });
}

function updateLocation(id, name, city, indoor) {
    db.execute("update location set name=?, city=?, indoor=? where id=?", name, city, indoor, id);
}

function createLocation(name, city, indoor) {
    db.execute("insert into location (name, city, indoor) values (?, ?, ?)", name, city, indoor);
}

function deleteLocation(id) {
    db.execute("delete from location where id=?", id);
}

function getRoutes(locationId) {
    return new Promise(function(resolve, reject) {
        var r =  db.query("SELECT * FROM route WHERE location_id=? ORDER BY name COLLATE NOCASE", locationId);
        resolve(r);
    });
}

function updateRoute(id, name, description, rating_id, sector, author, height, bolts, dateFrom, active) {
    db.execute("update route set name=?,description=?,rating_id=?,sector=?,author=?,height=?,bolts=?,dateFrom=?,active=? where id=?",
        name, description, rating_id, sector, author, height, bolts, dateFrom, active,
        id
    );
}

function createRoute(locationId, name, description, rating_id, sector, author, height, bolts, dateFrom, active) {
    console.log("saving route to db");
    db.execute("insert into route (location_id, name, description, rating_id, sector, author, height, bolts, dateFrom, active) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
        locationId, name, description, rating_id, sector, author, height, bolts, dateFrom, active
    );
}

function deleteRoute(id) {
    db.execute("delete from route where id=?", id);
}


initializeDatabase();

module.exports = {
    getUserProfile: getUserProfile,
    setUserProfile: setUserProfile,

    getLocations: getLocations,
    updateLocation: updateLocation,
    createLocation: createLocation,
    deleteLocation: deleteLocation,

    getRoutes: getRoutes,
    updateRoute: updateRoute,
    createRoute: createRoute,
    deleteRoute: deleteRoute,

    getRatings: getRatings
};
