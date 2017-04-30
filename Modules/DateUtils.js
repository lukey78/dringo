function stringToDate(dateStr) {
    if (dateStr === null) {
        return null;
    }

    var p = dateStr.split("-");
    var date = new Date(parseInt(p[0]), parseInt(p[1])-1, p[2]);

    return date;
}

function getCurrentDate() {
    return new Date();
}

function getCurrentDateAsString() {
    var d = getCurrentDate();
    return  d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate();
}

function getDateAsArray(date) {
    if (date === null) {
        return {};
    }
    return {
        "year": date.getFullYear(),
        "month": date.getMonth()+1,
        "day": date.getDate()
    }; 
}

function getDateArrayAsDateString(d) {
    if (d === null) {
        return "";
    }
    return d["year"] + "-" + d["month"] + "-" + d["day"];
}

function getDateStringAsArray(dateStr) {
    return getDateAsArray(stringToDate(dateStr));
}

function formatDate(date) {
    if (date === null) {
        return "";
    }
    return date.toLocaleDateString('de-DE', { "day": "2-digit", "month": "2-digit", "year": "numeric"});
}

module.exports = {
    stringToDate: stringToDate,
    getCurrentDate: getCurrentDate,
    getCurrentDateAsString: getCurrentDateAsString,
    getDateAsArray: getDateAsArray,
    getDateArrayAsDateString: getDateArrayAsDateString,
    getDateStringAsArray: getDateStringAsArray,
    formatDate: formatDate
};
