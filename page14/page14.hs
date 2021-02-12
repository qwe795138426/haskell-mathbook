
main :: IO ()
main = do
    print "i"
    i <- getLine 
    let i_1 =read i ::Int 
    print "s"
    s <- getLine 
    let s_1 =read i ::Int
    let answer = xunhuan [i_1,s_1]
    print answer


xunhuan :: (Ord p, Num p) => [p] -> p
xunhuan [x,y] 
    |x <= 100 = xunhuan [x+1,y+1]
    |x > 100 = x
