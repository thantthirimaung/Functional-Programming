import Data.Char (toLower)
import Data.Char (intToDigit)
import Numeric (showIntAtBase)


--Checking multiple spaces
hasMultipleSpaces :: String -> Bool
hasMultipleSpaces str = any (\(x, y) -> x == ' ' && y == ' ') $ zip str (tail str)

--Function to read as Double
readAsDouble :: String -> Double
readAsDouble = read

--Checking leading space
hasLeadingSpaces :: String -> Bool
hasLeadingSpaces (' ' : _) = True
hasLeadingSpaces _         = False

--String to lowercase
toLowerCase :: String -> String
toLowerCase = map toLower

--Valid Range between -100 and 100
isValidRange :: String -> Bool
isValidRange str = let value = read str in value >= -100.00 && value <= 100.00

--Division 
divideCommand :: String -> String -> String
divideCommand num1 num2
  | read num2 == 0 = "error"
  | otherwise = show $ read num1 `div` read num2

--Exponent
powerCommand :: String -> String -> Double
powerCommand base exponent = readAsDouble base ^ read exponent

--Remainder
remainderCommand :: String -> String -> String
remainderCommand num1 num2
  | read num2 == 0 = "error"
  | otherwise = show $ read num1 `mod` read num2

--Average
calculateAverage :: [Int] -> Double
calculateAverage numbers = fromIntegral (sum numbers) / fromIntegral (length numbers)

--Maximum
findMax :: [Int] -> Int
findMax = maximum

--Minimum
findMin :: [Int] -> Int
findMin = minimum

--Sum Odd
sumOdd :: Int -> String
sumOdd n
  | n <= 0 = "error"
  | otherwise = show $ sum $ filter odd [1..n]

--Sum Even
sumEven :: Int -> String
sumEven n
  | n <= 0 = "error"
  | otherwise = show $ sum $ filter even [1..n] 

--Counting Prime Numbers
countPrime :: [Int] -> Int
countPrime = length . filter isPrime
  where
    isPrime n
      | n <= 1 = False
      | otherwise = all (\i -> n `mod` i /= 0) [2..floor (sqrt (fromIntegral n))]

--Decimal to Binary
decimalToBinary :: Int -> String
decimalToBinary n
  | n <= 0 = "error"
  | otherwise = showIntAtBase 2 intToDigit n ""

-- Map Double
mapDouble :: [Int] -> [Int]
mapDouble = map (* 2)

-- Map Square
mapSquare :: [Int] -> [Int]
mapSquare = map (\x -> x * x)

-- Map Absolute
mapAbsolute :: [Int] -> [Int]
mapAbsolute = map abs

--Evaluation Command
processCommand :: String -> String
processCommand line
  | hasMultipleSpaces line = "error"
  | hasLeadingSpaces line = "error"
  | otherwise = case words (toLowerCase line) of
    
    --Sum Odd
    ("sum" : "odd" : num : []) 
      | not (isValidRange num) -> "error"
      | otherwise -> sumOdd (read num)

    --Sum Even
    ("sum" : "even" : num : [])
      | not (isValidRange num) -> "error" 
      | otherwise -> sumEven (read num)

    --Sum
    ("+" : num1 : num2 : []) 
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> show $ sum (map readAsDouble [num1, num2])
    ("sum" : num1 : num2 : []) 
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> show $ sum (map readAsDouble [num1, num2])

    --Subtract
    ("-" : num1 : num2 : []) 
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> show $ readAsDouble num1 - readAsDouble num2
    ("subtract" : num1 : num2 : []) 
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> show $ readAsDouble num1 - readAsDouble num2

    --Multiplication (updated to handle Double)
    ("*" : num1 : num2 : []) -- -> show $ (readAsDouble num1) * (readAsDouble num2) 
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> show $ (readAsDouble num1) * (readAsDouble num2)
    ("multiply" : num1 : num2 : []) -- -> show $ (readAsDouble num1) * (readAsDouble num2)
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> show $ (readAsDouble num1) * (readAsDouble num2)

    --Division
    ("/" : num1 : num2 : []) 
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> divideCommand num1 num2
    ("Divide" : num1 : num2 : [])
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> divideCommand num1 num2

    --Exponent
    ("**" : base : exponent : []) 
      | not (isValidRange base) || not (isValidRange exponent) -> "error"
      | otherwise -> show $ powerCommand base exponent

    --Remainder
    ("%" : num1 : num2 : []) 
      | not (isValidRange num1) || not (isValidRange num2) -> "error"
      | otherwise -> remainderCommand num1 num2

    --Average
    ("avg" : nums) 
      | length nums > 10 -> "error"
      | length nums == 0 -> "error"
      | length nums < 0 -> "error"
      | any (not . isValidRange) nums -> "error"
      | otherwise -> show $ calculateAverage (map read nums)

    --Maximum
    ("max" : nums) 
      | length nums > 10 -> "error"
      | length nums == 0 -> "error"
      | length nums < 0 -> "error"
      | any (not . isValidRange) nums -> "error"
      | otherwise -> show $ findMax (map read nums) 

    --Minimum
    ("min" : nums)
      | length nums > 10 -> "error"
      | length nums == 0 -> "error"
      | length nums < 0 -> "error"
      | any (not . isValidRange) nums -> "error"
      | otherwise -> show $ findMin (map read nums)

    --Counting Prime
    ("count" : nums) 
      | length nums > 10 -> "error"
      | length nums == 0 -> "error"
      | length nums < 0 -> "error"
      | any (not . isValidRange) nums -> "error"
      | otherwise -> show $ countPrime (map read nums)

    --Decimal to Binary
    ("dec2bin" : num : []) 
      | not (isValidRange num) -> "error"
      | otherwise -> decimalToBinary (read num)

    --Map Double
    ("map" : "double" : nums)
      | length nums > 10 -> "error"
      | length nums == 0 -> "error"
      | length nums < 0 -> "error" 
      | any (not . isValidRange) nums -> "error"
      | otherwise -> show $ mapDouble (map read nums)

    --Map Square
    ("map" : "square" : nums) 
      | length nums > 10 -> "error"
      | length nums == 0 -> "error"
      | length nums < 0 -> "error"
      | any (not . isValidRange) nums -> "error"
      | otherwise -> show $ mapSquare (map read nums)

    --Map Absolute
    ("map" : "absolute" : nums)
      | length nums > 10 -> "error"
      | length nums == 0 -> "error"
      | length nums < 0 -> "error" 
      | any (not . isValidRange) nums -> "error"
      | otherwise -> show $ mapAbsolute (map read nums)

    --Others will result error
    _ -> "error"

--Main
main :: IO ()
main = interact processInput

processInput :: String -> String
processInput input = unlines $ map processCommand (lines input)


  
