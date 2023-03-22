//
//  GameRound.swift
//  Right on target
//
//  Created by Ekaterina Nadolinskaya on 20.03.2023.
//

import Foundation

protocol GameRoundProtocol {
    var score: Int {get}
    var  currentSecretValue: Int {get}
    func calculateScore(with: Int)
}

class GameRound: GameRoundProtocol {
    var score: Int = 0
    var currentSecretValue: Int = 0
    func calculateScore(with value: Int) {
        if value > currentSecretValue {
            score += 50 - value + currentSecretValue
        } else if value < currentSecretValue {
            score += 50 - value - currentSecretValue
        } else {
            score += 50
        }
    }
}


