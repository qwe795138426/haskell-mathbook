import System.IO.Utf8
main :: IO ()
main = do
    putStrLn "测试版本(DANGEROUS)"
    putStrLn "基于haskell"
    putStrLn "it is designed for ex"
    putStrLn "Please input a Index term"
    a <- getLine
    putStrLn "Please input factorial number"
    b <- getLine
    let a_1=read a :: Double
    let b_1=read b :: Integer
    let answer= taileEx (a_1,b_1,0)
    print answer




taileEx :: Fractional c => (c, Integer, c) -> c
taileEx (a,0,acc) = acc
taileEx (a,b,acc) = taileEx (a,b-1,acc+a^b/fromInteger(factorial b))

factorial :: (Eq p, Num p) => p -> p
factorial 0 = 1
factorial n = n * factorial (n - 1) 