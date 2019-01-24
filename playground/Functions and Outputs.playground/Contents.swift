//: Created a new function that takes an input that has a place holder named howManyMilkCartons which is of type integer
//: "-> Int" : makes the function return an output

func getMilk(howManyMilkCartons : Int, howMuchMoneyRobotWasGiven : Int) -> Int {
    print("go to the shops")
    
    // \() scapes the string and passes the parameter
    print("buy \(howManyMilkCartons) cartons of milk")
    
    // constant to calculate the number of milk cartons times the price
    let priceToPay = howManyMilkCartons * 2
    
    print("pay $\(priceToPay)")
    print("come home")
    
    let change = howMuchMoneyRobotWasGiven - priceToPay
    
    return change
}


//: Calls the function to triggered it to run and adds the parameter. The parameter gets passed to the function and it gets put into the placeholder
var amounOfChange = getMilk(howManyMilkCartons: 1, howMuchMoneyRobotWasGiven: 10)

print("Hello master, here is your $\(amounOfChange) change")
