//
//  ContentView.swift
//  Memorize
//
//  Created by κΉλ³΄μ on 2022/05/19.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["π", "π", "π", "π", "π", "π", "π", "π", "π", "π", "π»", "π", "π", "π", "π΅", "π¦½", "π΄", "π²", "π¦Ό", "π", "πΊ", "π", "π", "π", "π", "π", "π"]
    
    @State var emojiCount = 20
    
    var body: some View {
        
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) {
                        emoji in CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                removeCardButton
                Spacer()
                addCardButton
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var removeCardButton: some View {
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
    }
    
    var addCardButton: some View {
        Button(action: {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
    }
}

struct CardView: View {
    
    var content: String
    
    @State var isFaceUp: Bool = true
    /*
     Swiftμμλ κ°μ΄ μλ λ³μ μ μΈμ΄ λΆκ°ν¨
     CardView λ΄λΆμμ μ μΈκ³Ό λμμ κ°μ μ§μ ν΄μ£Όκ±°λ
     νΉμ μΈλΆμμ CardViewλ₯Ό λΆλ₯Όλ κ°μ argumentλ‘ μ λ¬νλ€
     ex. CardView(isFaceUp: true)
     */
    
    let cardShape = RoundedRectangle(cornerRadius: 18)
    
    var body: some View {
        
        ZStack {
            if isFaceUp {
                cardShape.fill().foregroundColor(.white)
                cardShape.stroke(lineWidth: 3)
                Text("β€οΈβπ₯")
                    .font(.largeTitle)
            } else {
                cardShape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
    }
}
