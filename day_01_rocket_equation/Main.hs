main = do
    input <- getContents 
    let modules = lines input
        total = sum $ map getFuelForModule $ map read modules
    print total

getFuelForModule :: Int -> Int
getFuelForModule x = div x 3 - 2