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

sum even 7 <br>
count 8 7 6 5 4 3 13 <br>
AvG 4 5 73 54 8<br>
\* 3.4 5.6<br>
sum 5 6<br>
\- 6 3<br>
\- 45 567<br>
\* 4.5 6.0<br>
\+ 5 10<br>
subTraCt 20 7<br>
aVg 4 8 12<br>
MaX 3 7 1<br>
cOuNt 2 3 5<br>
DEC2bin 15<br>
map DOuble 2 4 6<br>
MAP squaRe 3 5 7<br>
map absolute -1 0 2<br>
MAP ABSOLUTE 4 5 8 7 6 5 4 3 2 1 8 7 5 0<br>
avg 9  8 4 4<br>
 AVg 4 5 6<br>
Sum even 7<br>
Sum Odd -1<br>
sum Odd 8<br>

# Output of Example Input
12<br>
4<br>
28.8<br>
19.04<br>
11.0<br>
3.0<br>
error<br>
27.0<br>
15.0<br>
13.0<br>
8.0<br>
7<br>
3<br>
1111<br>
[4,8,12]<br>
[9,25,49]<br>
[1,0,2]<br>
error<br>
error<br>
error<br>
12<br>
error<br>
16<br>


