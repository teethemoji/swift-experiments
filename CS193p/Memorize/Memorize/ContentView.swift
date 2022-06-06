//
//  ContentView.swift
//  Memorize
//
//  Created by 김보영 on 2022/05/19.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛵", "🦽", "🛴", "🚲", "🦼", "🏍", "🛺", "🚝", "🚞", "🚃", "🚄", "🚅", "🚈"]
    
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
     Swift에서는 값이 없는 변수 선언이 불가함
     CardView 내부에서 선언과 동시에 값을 지정해주거나
     혹은 외부에서 CardView를 부를때 값을 argument로 전달한다
     ex. CardView(isFaceUp: true)
     */
    
    let cardShape = RoundedRectangle(cornerRadius: 18)
    
    var body: some View {
        
        ZStack {
            if isFaceUp {
                cardShape.fill().foregroundColor(.white)
                cardShape.stroke(lineWidth: 3)
                Text("❤️‍🔥")
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
