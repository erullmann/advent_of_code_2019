main = do
    input <- getContents 
    let modules = lines input
        total = sum $ map getFuelForModule $ map read modules
    print total


getFuelForWeight :: Int -> Int
getFuelForWeight x = div x 3 - 2

getFuelForFuel' :: Int -> Int
getFuelForFuel' x = 
    if getFuelForWeight x <= 0
    then x
    else x + (getFuelForFuel' (getFuelForWeight x))

getFuelForModule :: Int -> Int
getFuelForModule x = getFuelForFuel' $ getFuelForWeight x
