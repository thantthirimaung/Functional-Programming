# Haskell Calculator
This is my class assignment and this Haskell program is a simple calculator with various mathematical functionalities. It accepts commands through standard input and outputs results or errors.

# Features
* Arithmetic Operations (+, -, *, /) - only accepts 2 numbers
* Exponentiation (**) - only accepts 2 numbers
* Remainder Calculation (%) - only accepts 2 numbers
* Average Calculation (avg) - accepts up to 10 numbers
* Finding maximum (max) and minimum (min) in a list of numbers - accepts up to 10 numbers
* Counting prime numbers in a list (count) - accepts up to 10 numbers
* Decimal to binary conversion (dec2bin) - only accepts 1 number
* Mapping Operations (double, square, absolute) - accepts up to 10 numbers
* Sum of odd numbers (sum odd) - accepts one positive number
* Sum of even numbers (sum even) - accepts one positive number

# Usage
Use the command "stack runghc calculator.hs < input.txt > output.txt"

# Input Constraints
* Input lines for arithmetic operations, exponentiation, and remainder must include only two numbers.
* For average, finding maximum, minimum, prime counting, and mapping functions, only up to 10 numbers are accepted.
* Commands are case-insensitive (e.g., avg and AVG are equivalent).
* Extra spaces in the input lines will result in an error.
* Leading spaces in the input lines will result in an error.
* Numbers must be in the range -100 to 100.
* Sum of even and sum of odd commands only accept one positive number.

# Example Input Commands
sum even 7
count 8 7 6 5 4 3 13
AvG 4 5 73 54 8
* 3.4 5.6
sum 5 6
- 6 3
- 45 567
* 4.5 6.0
+ 5 10
subTraCt 20 7
aVg 4 8 12
MaX 3 7 1
cOuNt 2 3 5
DEC2bin 15
map DOuble 2 4 6
MAP squaRe 3 5 7
map absolute -1 0 2
MAP ABSOLUTE 4 5 8 7 6 5 4 3 2 1 8 7 5 0
avg 9  8 4 4
 AVg 4 5 6
Sum even 7
Sum Odd -1
sum Odd 8

# Output of Example Input
12
4
28.8
19.04
11.0
3.0
error
27.0
15.0
13.0
8.0
7
3
1111
[4,8,12]
[9,25,49]
[1,0,2]
error
error
error
12
error
16

