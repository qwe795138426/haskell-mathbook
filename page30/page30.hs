main :: IO ()
main = do
    print "i"
    i <- getLine
    let i_1=read i ::Double 
    print "s"
    s <- getLine 
    let s_1=read s ::Double
    let answer = emmm [i_1,s_1]
    print answer


emmm :: (Ord p, Num p) => [p] -> p
emmm [x,y] | x <= 100 = emmm [y+x,x+1]
           | x > 100 = y
