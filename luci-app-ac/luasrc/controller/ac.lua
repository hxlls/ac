module("luci.controller.ac", package.seeall)

function index()
    entry({"admin", "ac"}, firstchild(), _("AC"), 30).dependent = false
    entry({"admin", "ac", "basic"}, template("ac/basic"), _("Basic Settings"), 1)
    entry({"admin", "ac", "temp"}, template("ac/temp"), _("Template List"), 2)
    entry({"admin", "ac", "aplist"}, template("ac/aplist"), _("Wireless AP List"), 3)
    entry({"admin", "ac", "hotspotsearch"}, template("ac/hotspotsearch"), _("Access Point List"), 4)
    entry({"admin", "ac", "stasearch"}, template("ac/stasearch"), _("User List"), 5)
    entry({"admin", "ac", "acfilter"}, template("ac/acfilter"), _("Black and White List"), 6)
end