import UIKit

/**
 
 IMPERIAL - USA
 
 **/

func bmiCalcImperialUnits(weightInPounds: Double, heightInFeet : Double, heightInInches: Double) {
    
    //: Get weight in kilograms
    let weightInKg = weightInPounds * 0.45359237
    
    //: Get height in inches
    let totalInches = (heightInFeet * 12) + heightInInches
    
    //: Get height in meters
    let heightInInchesToMeters = totalInches * 0.0254
    
    let bmi = weightInKg / pow(heightInInchesToMeters, 2)
    
}


bmiCalcImperialUnits(weightInPounds: 140, heightInFeet: 5, heightInInches: 11)

//: Measurements: 5'11, 190 pounds

//: 1 Foot = 12 inches
//: 1 Inch = 0.0254 meters
//: 1 Pound = 0.45359237 kg
