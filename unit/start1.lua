--unit.setTimer('timer', 0.1)

svgWidth = 1024
svgHeight = 612

nitronMassVol = 4
xergonMassVol = 6
volMax = 400
widthMax = 824

compter = 0
seconde = 0
minute = 0

state = 1
bound = 1 -- side effect non voulue

squareX = 462
squareY = 256

replace = function(view, tabVal)
    local rep = ''
    for k, v in pairs(tabVal) do
        rep = '{{'..k..'}}'
        view = string.gsub(view, rep, v)
    end
    return view
end

eventClick = function(x, y, w, h, callback, antiBound) -- fait un side effect sur bound
    local mX = svgWidth * screen.getMouseX()
    local mY = svgHeight * screen.getMouseY()
    antiBound = antiBound or true
    
    if (screen.getMouseState() == 1 and mX >= x and mX <= x + w and mY >= y and mY <= y + h) then
        if (antiBound == true) then
            if (bound == 1) then
                bound = (bound == 1) and 0 or 1
                callback(mX, mY)
            end
        else
            callback(mX, mY)
        end
    else
        if (antiBound == true and bound == 0) then
            bound = (bound == 1) and 0 or 1
        end
    end
end

switch = function(test, acc)
    test = test or nil
    acc = acc or nil
    
    return {
        case = function(val, act) return switch(test, (val == test) and act() or acc) end,
        plage = function(val1, val2, act) return switch(test, (test >= val1 and test <= val2) and act() or acc) end,
        default = function(act) return (acc == nil) and act() or acc end
    }
end