primeNumber :: Double  -> Bool
primeNumber x
    |x==1 = error "Can't be equal to 1"
    |x < 0 = error "It can't be negative"
    |floor (x/2) < ceiling (x/2) || floor (x/3) < ceiling (x/3) || floor (x/3) < ceiling (x/3) = False 
    |otherwise = False 



main :: IO ()
main = do
    print "n"
    num_1 <- getLine
    let num_2 = read num_1 ::Double
    let ansewer = primeNumber num_2
    print ansewer