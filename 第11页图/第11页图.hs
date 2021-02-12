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
    let answer = triangle a_1 b_1 c_1
    print answer

triangle x y z
    |x+y>z && y+z>x && x+z>y = True
    |otherwise = False
