--[[
    Purpose: Bezier Curve functionalities. 
    Date of Creation: 9/28/2020
    Edited By: Minhnormal
]]


local BezierCurve = {}


local function check(p0, p1, p2, t)
    assert(typeof(p0) == "Vector3", "p0, p1, and p2 needs to be Vector 3 Values")
    assert(typeof(p1) == "Vector3", "p0, p1, and p2 needs to be Vector 3 Values")
    assert(typeof(p2) == "Vector3", "p0, p1, and p2 needs to be Vector 3 Values")
    assert(typeof(t) == "number" and t >= 0 and t <= 1, "t needs to be a number between 1 and 0")
end


function BezierCurve.getQuadraticBezierCurvePFinal(p0, p1, p2, t)
    check(p0, p1, p2, t)

    local x = math.pow(1 - t, 2) * p0.x + (1 - t) * 2 * t * p1.x + t * t * p2.x
    local y = math.pow(1 - t, 2) * p0.y + (1 - t) * 2 * t * p1.y + t * t * p2.y
    local z = math.pow(1 - t, 2) * p0.z + (1 - t) * 2 * t * p1.z + t * t * p2.z

    local pFinal = Vector3.new(x, y, z)
    return pFinal
end


return BezierCurve