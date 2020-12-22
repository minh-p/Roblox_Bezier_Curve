--[[
    Purpose: Bezier Curve Test
    Date of Creation: 10/1/2020
    Edited by Minhnormal
]]


local ServerScriptService = game:GetService("ServerScriptService")
local BezierCurve = require(ServerScriptService.ServerModules.BezierCurve)

local function bezierLoop()
    for t = 0, 1, 0.01 do
        local p0 = workspace.p0.Position
        local p1 = workspace.p1.Position
        local p2 = workspace.p2.Position
        
        local pFinal = BezierCurve.getQuadraticBezierCurvePFinal(p0, p1, p2, t)
        workspace.pFinal.Position = pFinal
        wait()
    end
end

bezierLoop()