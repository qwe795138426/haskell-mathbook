main :: IO ()
main=do
    print "x"
    x_1 <- getLine 
    let x= read x_1 ::Double
    let y = x^3+3*x^2-24*x+30
    print y
