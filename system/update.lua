screen.clear()

eventClick(412, 500, 200, 60, function()
    state = switch(state)
    .case(1, function() return 2 end)
    .case(2, function() return 3 end)
    .default(function() return 1 end)
end, true)

local render = switch(state)
.case(1, function() return controllerGauge() end)
.case(2, function() return controllerCompter() end)
.default(function() return controllerDep() end)

screen.setHTML(render)