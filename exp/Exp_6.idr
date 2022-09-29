module Exp_6

x : Int
y : Int

x = 6
y = 5

leny : String -> String
leny wor = if length wor > 2 then "shorty" else "longy"

double : Double -> Double
double x = 2 * x

add : Double -> Double -> Double
add x y = x + y

addTwo : Double -> Double
addTwo = add 2

-- Interesting evalutaion order if you
-- do addTwo_2 4 5, you will get 7.0
addTwo_2 : Double -> (Double -> Double)
addTwo_2 x = add 2