import UIKit

/*
 FIBONACCI NUMBERS
 
 n = 5
 0,1,1,2,3,5,8
 
 */

func fibonacci(until n : Int){
    print(0)
    print(1)
    
    var num1 = 0
    var num2 = 1
    
    for i in 0...n {
        let num = num1 + num2
        print(num)
        
        num1 = num2
        num2 = num
    }
    
}

fibonacci(until: 5)