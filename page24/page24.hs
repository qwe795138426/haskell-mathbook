main :: IO ()
main = do 
    print "a"
    a <- getLine 
    print "b"
    b <- getLine 
    let x=a
    let a=b
    let b=x
    print [a,b]