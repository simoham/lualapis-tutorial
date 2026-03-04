local lapis = require("lapis")
local app = lapis.Application()
app:enable("etlua")

app:get("/", function()
  return "Welcome to Lapis " .. require("lapis.version")
end)

app:get("/html", function(self)
  self.version = require("lapis.version")
  self.hello = "Hello"
  return { render = "index" }
end)


return app
