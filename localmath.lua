-- https://love2d.org/wiki/General_math
-- Returns 'n' rounded to the nearest 'deci'th (defaulting whole numbers).
function math.round(n, deci)
    deci = 10^(deci or 0)
    return math.floor(n*deci+.5)/deci
end