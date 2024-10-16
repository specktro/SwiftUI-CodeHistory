//
//  QuestionView.swift
//  Code History
//
//  Created by specktro on 15/10/24.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(question.possibleAnswers, id: \.self) { answer in
                    Button {
                        print("Tapped on option with the text: \(answer)")
                    } label: {
                        ChoiceTextView(choiceText: answer)
                    }

                }
            }
        }
    }
}

#Preview {
    QuestionView(question: Question(questionText: "What was the first computer bug?",
                                    possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
                                    correctAnswerIndex: 2))
}
