//
//  Game.swift
//  apple_pie
//
//  Created by The Duke on 7/12/23.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !word.contains(letter) { incorrectMovesRemaining -= 1 } // end playerGuessed()
        
    } // end playerGuessed()
    
} // end Game{}
