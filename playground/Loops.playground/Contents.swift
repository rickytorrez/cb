import UIKit

//: SUM OF NUMBERS INSIDE AN ARRAY
let arrayOfNumbers = [1,5,3,6,2,7,23,34]
var sum = 0

//: loops through the array
for number in arrayOfNumbers {
    sum += number
}
print(sum)


print("___________")
print("           ")


//: FOR LOOP FOR THROUGH NUMBERS FROM 1 TO 10 - INCLUDES 10
for i in 1 ... 10 {
    print(i)
}


print("___________")
print("           ")


//: FOR LOOP OPEN RANGE FROM 1 TO LESS THAN 10 - DOES NOT INCLUDE 10 AND ONLY HAS TWO DOTS
for x in 1..<10 {
    print(x)
}


print("___________")
print("           ")

//: INCREMENT BY TWO - EVEN NUMBERS
for y in 1..<10 where y % 2 == 0{
    print(y)
}
