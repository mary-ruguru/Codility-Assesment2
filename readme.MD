# TOY PROBLEM

## CHALLENGE 1: Broken Sequence

## BDD

We are requested to create a function 

It should receive some random elements as a space-delimited string.

Check if the elements are part of an ascending sequence of integers starting with 1, with an increment of 1 (e.g. 1, 2, 3, 4).


#### GIven

function

It should receive some random elements.

#### Expected results

0 if the elements can form such a sequence, and no number is missing ("not broken", e.g. "1 2 4 3")

1 if there are any non-numeric elements in the input ("invalid", e.g. "1 2 a")

n if the elements are part of such a sequence, but some numbers are missing, and n is the lowest of them ("broken", e.g. "1 2 4" or "1 5")

## Pseudo code

Step1: Split the input string by spaces to get an array of elements

Step2: Loop through each element in the array:
        
       a. If the element is not a number, return 1 (invalid)

       b. Otherwise, parse the element as an integer and add it to a set

Step3: Sort the set in ascending order

Step4: Loop through each number in the set:

       a. If the number is not the current expected number in the sequence (starting with 1 and incrementing by 1), return that number as the missing number (broken)

Step5: If the loop completes without returning anything, return 0 (not broken) as the sequence is complete without any missing numbers.
   

## CHALLENGE 2: Find out whether the shape is a cube

## BDD

We are requested to create a function 

To find the volume (centimeters cubed) of a cuboid you use the formula:

         volume = Length * Width * Height

But someone forgot to use proper record keeping, so we only have the volume, and the length of a single side! It's up to you to find out whether the cuboid has equal sides (= is a cube).

Note: side will be an integer

#### Given

Volume and length of a given side

#### Expected result

Return true if the cuboid could have equal sides, return false otherwise.

Return false for invalid numbers too (e.g volume or side is less than or equal to 0).

## Pseudocode

Step1: Define a function called find_cube that takes in two parameters: volume and side.

Step2: Check if volume and side are greater than 0. If not, return false.

Step3: Calculate the length, width, and height of the cuboid using the given volume and side.

Step4: Check if all sides of the cuboid are equal. If so, return true. Otherwise, return false.

S
