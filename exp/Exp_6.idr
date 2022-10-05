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

f1 : Int -> Int -> Int
f1 x y = x * 2 + y

-- exquisitely uncurrying f1 ;)
f1u : (Int, Int) -> Int
f1u (x, y) = f1 x y

-- creating uncurried functions using tuples
f1t : (Int, Int) -> Int
f1t (x, y) = x * 2 + y

-- f1un : uncurry f1 -- doesnt work
f1un : (Int, Int) -> Int
f1un = uncurry f1

f2 : Int -> Int -> Int -> Int
f2 x y z = x * 2 + y * z + 1

-- undesirable uncurrying where the first two
-- parameters are tuppled together
f2un : ((Int, Int) , Int) -> Int
f2un = uncurry (uncurry f2)