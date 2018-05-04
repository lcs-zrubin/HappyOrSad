//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()
var hapiFes = 0
var sadFes = 0

//Make sure the input was given (create a String from the String?)
guard let input = rawInput else {
    //ERROR
    exit(9)
}
//Stop the program if there was invalid input
if input.characters.count < 1 || input.characters.count > 255 {
    exit(9)
}

// Print out the input provided
//print("You said:")
//print(rawInput) //optinal String
//print(input) //non optional String

//Process - inspect each character
for individualCharacter in input {
    
    //aDebug
    //print(individualCharacter)
    
    // Categorize the character
    switch individualCharacter {
    case "😃", "😊", "😀", "😄", "🙂":
        hapiFes += 1
    case "☹️", "😔", "😟", "🙁", "☹️", "😢", "😕":
        sadFes += 1
    default:
        break //do nothing
    }
}
  
   


//Output
//If no emoji, print no
if hapiFes == 0 && sadFes == 0 {
    print("none")
//If same number of happy as sad emojis, print unsure
} else if hapiFes == sadFes {
    print("unsure")
//If more happy than sad, print happy
} else if hapiFes > sadFes {
    print("happy")
//else, there will be more sad, so print sad
} else {
    print("sad")
}





