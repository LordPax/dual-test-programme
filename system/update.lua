screen.clear()

eventClick(412, 500, 200, 60, function()
    if state == 1 then
        state = 2
    elseif state == 2 then
        state = 3
    else
        state = 1
    end
end, true)

if state == 1 then
    render = controllerGauge()
elseif state == 2 then
    render = controllerCompter()
else
    render = controllerDep()
end

screen.setHTML(render)