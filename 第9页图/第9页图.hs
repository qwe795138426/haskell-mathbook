hailun x y z=
    sqrt p*(p-x)*(p-y)*(p-z) 
    where p = (x+y+z)/2

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
    let answer = hailun a_1 b_1 c_1
    print answer 
