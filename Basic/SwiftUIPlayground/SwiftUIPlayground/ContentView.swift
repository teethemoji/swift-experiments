//
//  ContentView.swift
//  SwiftUIPlayground
//
//  Created by 김보영 on 2022/07/17.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            
            // TODO:  이미지를 받아 넣는 곳
            TempCard(cardText: "오늘의 꽃")
            
            // TODO: 쪽지 이미지
            TempCard(cardText: "쪽지")
        } // VStack
        .navigationTitle("꽃 선물하기")
    }
}

struct TempCard: View {
    
    let cardText: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .stroke()
                .frame(width: 360, height: 160, alignment: .center)
            Text(cardText)
        } // ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
