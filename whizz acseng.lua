G.timer = 30 --//change this to how long u want it looping for
G.printTimerLeft = true --//enable or disable the print message

local startTime = os.clock()
local nextPrintTime = 20

while os.clock() - startTime < G.timer do
    task.wait()

    for _, player in ipairs(game.Players:GetPlayers()) do
        game:GetService("ReplicatedStorage").ACS_Engine.Events.Whizz:FireServer(player)
    end

    if G.printTimerLeft and g.printTimerLeft and os.clock() - startTime >= nextPrintTime then
        local remainingTime = math.max(0, G.timer - (os.clock() - startTime))
        print("time left: " .. math.floor(remainingTime) .. " seconds.")
        nextPrintTime += nextPrintTime
    end
end
