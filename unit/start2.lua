-- controller
controllerGauge = function()
    vol1 = fuel1.getItemsMass() / nitronMassVol
    width1 = widthMax * vol1 / volMax
    pour1 = string.format('%.2f', width1 / widthMax * 100)

    vol2 = fuel2.getItemsMass() / nitronMassVol
    width2 = widthMax * vol2 / volMax
    pour2 = string.format('%.2f', width2 / widthMax * 100)

    vol3 = fuel3.getItemsMass() / xergonMassVol
    width3 = widthMax * vol3 / volMax
    pour3 = string.format('%.2f', width3 / widthMax * 100)

    val = {
        fuel1 = width1,
        val1 = pour1,
        fuel2 = width2,
        val2 = pour2,
        fuel3 = width3,
        val3 = pour3,
    }
    
    return replace(viewGauge, val)
end

controllerCompter = function()
    render = replace(viewCompter, {val = compter})
    compter = compter + 1
    return render
end