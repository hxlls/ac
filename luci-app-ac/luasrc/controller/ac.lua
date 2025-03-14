module("luci.controller.ac", package.seeall)

function index()
    entry({"admin", "services", "acdashboard"}, template("services/acdashboard"), _("AC Dashboard"), 1)
end
