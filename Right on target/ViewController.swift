//
//  ViewController.swift
//  Right on target
//
//  Created by Ekaterina Nadolinskaya on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game!
    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    
    @IBAction func checkNumber() {
        let numSlider = Int(self.slider.value.rounded())
        game.roundScore.calculateScore(with: numSlider)
        if game.isGameEnded {
            showAlert()
        } else {
            game.startNewRound()
        }
        setNewLabelText()
    }
    
    func setNewLabelText() {
        print(game.currentSecretValue)
        label.text = String(game.currentSecretValue)
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Game over", message: "You have \(game.score) points", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Start new game", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        game.restartGame()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game(rounds: 5)
        setNewLabelText()
    }
    
}
