unit.setTimer('timer', 0.5)

nitronMassVol = 4
xergonMassVol = 6
volMax = 400
widthMax = 824

compter = 0

state = 0

replace = function(view, tabVal)
    local rep = ''
    for k, v in pairs(tabVal) do
        rep = '{{'..k..'}}'
        view = string.gsub(view, rep, v)
    end
    return view
end