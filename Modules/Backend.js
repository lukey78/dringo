var sqlite = require('SQLite');
var db = sqlite.open("dringo.sqlite");

function initializeDatabase() {
    db.execute("create table if not exists userprofile (id integer primary key, username varchar(200), email varchar(200))");
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

initializeDatabase();

module.exports = {
    getUserProfile: getUserProfile,
    setUserProfile: setUserProfile
}
