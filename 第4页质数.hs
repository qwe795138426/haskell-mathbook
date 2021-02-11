primeNumber :: (Eq a, Fractional a) => a -> IO ()
primeNumber x
    |x==1 = error "Can't be equal to 1"
    |(x/2)==0 || (x/3)==0 || (x/5)==0 = print "False" 
    |otherwise = print "True"


main :: IO ()
main = do
    print "n"
    num_1 <- getLine
    let num_2 = read num_1 ::Integer
    print "total"