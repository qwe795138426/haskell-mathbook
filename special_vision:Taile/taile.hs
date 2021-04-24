main :: IO ()
main = do 
    putStrLn "testing release(DANGEROUS)"
    putStrLn "powered by haskell"
    putStrLn "it is designed for ex"
    putStrLn "Please input a Index term"
    a <- getLine
    putStrLn "Please input factorial number"
    b <- getLine
    let a_1=read a :: Double
    let b_1=read b :: Integer
    let answer= taileEx a_1 b_1
    print answer



taileEx :: Fractional a => a -> Integer -> a
taileEx a 0 = a
taileEx a b = a^b/fromInteger(factorial b) + taileEx a b-1
 
factorial :: (Eq p, Num p) => p -> p
factorial 0 = 1   
factorial n = n * factorial (n - 1)  