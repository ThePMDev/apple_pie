//
//  ViewController.swift
//  apple_pie
//
//  Created by The Duke on 7/11/23.
//

import UIKit

class ViewController: UIViewController {

// @MARK: Outlets
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
// @MARK: Variables
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0
    var listOfWords = ["ghost", "brown", "magic", "ocean"]
    var currentGame: Game!

// @MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    } // end viewDidLoad()

    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    } // end newRound()
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins) vs Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
// @MARK: Actions
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
    }
    

} // end ViewController

