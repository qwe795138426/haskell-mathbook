main :: IO ()
main = do
    print "a"
    a <- getLine
    let a_1 = read a ::Double 
    print "b"
    b <- getLine
    let b_1 = read b ::Double 
    print "d"
    d <- getLine 
    let d_1 = read d ::Double
    let answer = emmm [a_1,b_1,d_1]
    print answer

emmm :: (Ord a, Fractional a) => [a] -> [a]
emmm [x,y,z] = [n,g,f]
    where n=(x+y)/2
          g=x^2-2
          f=m^2-2
          m= emmmm [g,f,x,y]



emmmm :: (Ord p, Num p) => [p] -> p
emmmm [g,f,x,y]
    |g*f <0 = y
    |otherwise = x
