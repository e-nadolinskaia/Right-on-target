//
//  Game.swift
//  Right on target
//
//  Created by Ekaterina Nadolinskaya on 19.03.2023.
//

import Foundation

protocol GameProtocol {
    var score: Int {get}
    var currentSecretValue: Int! {get}
    var isGameEnded: Bool {get}
    func restartGame()
    func startNewRound()
}

class Game: GameProtocol {
    var generator = Generator(startValue: 1, endValue: 50)
    var roundScore = GameRound()
    
    var currentSecretValue: Int!
    var score: Int = 0
    private var lastRound: Int
    private var currentRound: Int = 1
    var isGameEnded: Bool {
        if currentRound >= lastRound {
            return true
        } else {
            return false
        }
    }
    init?(rounds: Int) {
        lastRound = rounds
    }
    
    func restartGame() {
        currentRound = 0
        score = 0
        startNewRound()
    }
    
    func startNewRound() {
        currentSecretValue = generator?.getRandomNumber()
        currentRound += 1
    }
}
