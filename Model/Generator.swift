//
//  Generator.swift
//  Right on target
//
//  Created by Ekaterina Nadolinskaya on 20.03.2023.
//

import Foundation

protocol GeneratorProtocol {
    func getRandomNumber() -> Int
}

class Generator: GeneratorProtocol {
    private var minSecretValue: Int
    private var maxSecretValue: Int
    
    init?(startValue: Int, endValue: Int) {
        guard startValue <= endValue else {
            return nil
        }
        minSecretValue = startValue
        maxSecretValue = endValue
    }
    
    func getRandomNumber() -> Int {
        (minSecretValue...maxSecretValue).randomElement()!
    }
}
