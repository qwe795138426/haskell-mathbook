main = do
    print "m"
    m <- getLine
    let m_1 = read m 
    print "n"
    n <- getLine
    let n_1 = read n 
    let answer = rangzhuan m_1 n_1
    print answer


rangzhuan m n 
    |n /= 0 = rangzhuan n (rem m n)
    |n == 0 = m