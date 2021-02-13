main :: IO ()
main = do
    print "a"
    a <- getLine
    let a_1 = read a ::Double  
    print "b"
    b <- getLine
    let b_1 = read b ::Double
    print "c"
    c <- getLine
    let c_1 = read c ::Double 
    let answer = mymax a_1 b_1 c_1
    print answer

mymax :: Ord a => a -> a -> a -> a
mymax a b c = d
    where d = max m c
          m = max a b