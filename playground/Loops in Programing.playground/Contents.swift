import UIKit

//: Takes the input from the user to sing the song
//: First name in inputs is the outside parameter name
//: Second name is the inside parameter name which works only in the function
    //: func beerSong(withThisManyBottles totalNumberOfBottles : Int)

//: However, if the name of your function is descriptive enough, you don't need a parameter name, just an underscore "_"
    //: func beerSongForThisManyBottlesOfBeer(_ totalNumberOfBottles : Int) ====> ON LINE 12
    //: print(beerSongForThisManyBottlesOfBeer(7))                          ====> ON LINE 28

func beerSong(forThisManyBottlesOfBeer totalNumberOfBottles : Int) -> String {
    var lyrics: String = ""
    
    //: By adding the parenthesis and the .reverse we reverse the loop to start at 99 and end in 1
    for number in (1...totalNumberOfBottles).reversed() {
        
        //: \n: provides a new line - break between string sentences.
        let newLine: String = "\n \(number) bottles of tequila on the wall, \(number) bottles of tequila. \n Take one down and pass it around, \(number - 1) bottles of tequila on the wall.\n"
        lyrics += newLine
    }
    
    lyrics += "\n No more bottles of tequila on the wall, no more bottles of tequila. \n Go to the store and buy some more, \(totalNumberOfBottles) bottle of tequila on the wall."
    
    return lyrics
}

print(beerSong(forThisManyBottlesOfBeer: 7))
