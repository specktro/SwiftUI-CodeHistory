//
//  GameViewModel.swift
//  Code History
//
//  Created by specktro on 15/10/24.
//

import SwiftUI

final class GameViewModel: ObservableObject {
    @Published private var game = Game()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOFQuestions)"
    }
}
