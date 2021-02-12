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
    let answer = lamda a_1 b_1 c_1
    print answer



lamda :: (Ord a, Show a, Floating a) => a -> a -> a -> [String]
lamda x y z
    |m > 0 = [show (m_1+p),show (m_1-p)]
    |m == 0 = [show m_1]
    |m < 0 = ["No answer"]
    |otherwise =["Illegal input"]
    where m = y^2-4*x*z
          m_1 = sqrt m/2
          p = (-y)/2*x