main :: IO ()
main = do
    print "Please input an integer"
    x <- getLine
    let x_1 = read x ::Double
    let answer = emmm x_1 
    print answer



emmm :: (Ord p, Fractional p) => p -> p
emmm x
    |9<x && x<100 = 10+x/10
    |otherwise = 0.0