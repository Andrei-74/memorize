//
//  ContentView.swift
//  memorize
//
//  Created by Андрей Костицин on 12.02.2022.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🦑","🐛","🦞"]
    @State var emojiCount = 2
    var body: some View {
        VStack {
            ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                remove nhbvhgn  qASD
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
       
        
    }
    var add: some View {
        Button {
            if emojiCount < emojis.count {
            emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    var remove: some View {
        Button {
            if emojiCount > 1 {
            emojiCount -= 1
        }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
}





struct CardView: View {
    var content = ""
    @State var isFaceUp = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
            Text(content)
                .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            self.isFaceUp = !isFaceUp
        
        }
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}

