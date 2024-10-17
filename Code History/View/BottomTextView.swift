//
//  BottomTextView.swift
//  Code History
//
//  Created by specktro on 13/10/24.
//

import SwiftUI

struct BottomTextView: View {
    let string: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(string)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }
        .background(GameColor.accent)
    }
}

#Preview {
    BottomTextView(string: "Hello, World!")
}
