main :: IO ()
main = do
    print "x"
    b <- getLine 
    let b_1 = read b ::Double
    let a = myabs b_1
    print a


myabs :: (Ord a, Num a) => a -> a
myabs x 
    |x>0 = x
    |x<=0 = -x