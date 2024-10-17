//
//  GameView.swift
//  Code History
//
//  Created by specktro on 21/09/24.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main
                .ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(
                destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                                                                 incorrectGuesses: viewModel.incorrectGuesses)),
                isActive: .constant(viewModel.gameIsOver),
                label: { EmptyView() })
        )
    }
}

#Preview {
    GameView()
}
