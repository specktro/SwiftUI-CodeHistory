//
//  GameView.swift
//  Code History
//
//  Created by specktro on 21/09/24.
//

import SwiftUI

struct GameView: View {
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
        
    @State var mainColor = GameColor.main
    
    var body: some View {
        ZStack {
            mainColor
                .ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack {
                    ForEach(question.possibleAnswers.indices, id: \.self) { index in
                        Button {
                            print("Tapped on option with the text: \(question.possibleAnswers[index])")
                            mainColor = index == question.correctAnswerIndex ? .green : .red
                        } label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[index])
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)

    }
}

#Preview {
    GameView()
}
