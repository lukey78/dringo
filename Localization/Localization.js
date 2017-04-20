var Observable = require("FuseJS/Observable");
var Bundle = require("FuseJS/Bundle");
var DeviceLocale = require("DeviceLocale");
loc = Observable();

var Locales = {	"default": "de.json",
				"en-US": "en.json",
                "en-GB": "en.json"
			  };

function setLocale(locale){
	if (locale in Locales) {
        f = Locales[locale];
    }
	else {
        f = Locales["default"];
    }
	loc.value = JSON.parse(Bundle.readSync("Translations/" + f));
}

setLocale(DeviceLocale.locale);

module.exports = { loc, setLocale };
