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

identityInt : Int -> Int
identityInt x = x

identity : ty -> ty
identity x = x

-- Below code doesnt work.
-- thec : (ty : Type) -> ty1 -> ty
-- thec ty x = x

doubleg : Num ty => ty -> ty
doubleg x = x + x

-- Below code doenst work since Double is not an interface
-- doubled : Double ty => ty -> ty
-- doubled x = x + x
