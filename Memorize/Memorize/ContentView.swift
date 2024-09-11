//
//  ContentView.swift
//  Memorize
//
//  Created by Anirudh on 27/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundColor(.orange)
    }
}
                    
struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.title)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        })
        
       
    }
}

#Preview {
    ContentView()
}
