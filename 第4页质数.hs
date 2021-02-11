prime_number_1 x = primeNumber (read x-2+2) 

primeNumber n
    |n == 1 = error "不能等于1"
    |n mod 2 == 1 = print "False"
    |3 > (n-1) = print "Ture"
    |otherwise = print "False"



main = do
    print "输入n"
    number_1 <- getLine
    prime_number_1 number_1
    