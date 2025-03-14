module("luci.controller.ac", package.seeall)

function index()
    entry({"admin", "ac", "dashboard"}, template("ac/acdashboard"), _("AC Dashboard"), 1)
end
