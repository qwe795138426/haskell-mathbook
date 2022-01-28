import System.IO.Utf8

main :: IO ()
main = do
    putStrLn "该程序用于计算斐波那次数列的第n项"
    putStrLn "输入计算的项数："
    n <- getLine
    let answer = fibonacci (read n)
    print answer

fibonacci :: (Eq a, Num a, Num p) => a -> p
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)