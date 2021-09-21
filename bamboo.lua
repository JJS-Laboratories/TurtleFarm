function suck()
    turtle.suck()
    turtle.suck()
    turtle.suckDown()
    turtle.suckDown()
    turtle.suckDown()
    turtle.suckDown()
    turtle.suckDown()
end


while true do
    right = false
    repeat
        if turtle.getFuelLevel() < turtle.getFuelLimit()/32 then
            rs.setOutput("back", true)
        else
            rs.setOutput("back", false)
        end
        local right = rs.getInput("right")
        os.sleep(0.1)
    until right

    i = 0

    repeat
        turtle.dig()
        turtle.forward()
        i = i+1
    until i == 9

    turtle.turnRight()
    turtle.turnRight()

    i = 0

    repeat
        turtle.dig()
        suck()
        turtle.dig()
        turtle.forward()
        i = i+1
    until i == 9

    turtle.turnRight()
    turtle.turnRight()

    slot1 = 1
    repeat
        turtle.select(slot1)
        turtle.dropDown()
        slot1 = slot1+1
    until slot1 == 17
    turtle.select(1)
end