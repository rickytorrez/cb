
import UIKit

func loveCalculator (yourName : String, theirName : String) -> String {
    
    //: Create a constant named loveScore that equals the arc4random_uniform function which gives you a number between 0 and one less of the integer you provide.
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return "Your love score is \(loveScore). You love eachother like Kanye loves himself."
    } else if loveScore > 40 && loveScore <= 80{
        return "Your lveo score is \(loveScore). You go together like coke and mentos."
    } else {
        return "Your love score is \(loveScore). No love possible, you'll be forever alone."
    }
    
}

print(loveCalculator(yourName: "Angela Yu", theirName: "Jack Bauer"))
