import UIKit

/**
 
 METRIC
 
 **/

func calculateBMI (weight : Double, height : Double) -> String {
    
    //: pow: power function raises the first number by the exponent you specify - same as (height * height)
    let bmi = weight / pow(height, 2)
    
    //: String format for converting different data into strings. The one we use takes a format and an argument.
    //: The format we'll use takes a percentage mark of .2F to round off two decimal places of whatever our argument is, in this case - bmi
    //: %.3f = 19.444
    //: %.2f = 19.44
    //: %1.0f = 19
    let shortenedBMI = String(format: "%.2f", bmi)
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "you are overwight. Get to the gym!"
    }
    
    //: bmi must be repeated for both statements - greater and less than
    else if bmi > 18.5 && bmi < 25 {
        interpretation = "you are of normal weight"
    }
    else {
        interpretation = "you are underweight. Eat a burger!"
    }
    
    //: return a combination of a string with doubles
    return "Your BMI is \(shortenedBMI) and \(interpretation)"
}

var bmiResult = calculateBMI(weight: 63, height: 1.8)
print(bmiResult)
