//
//  ContentView.swift
//  wantedPreOnboardingChallenge
//
//  Created by 김보영 on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            ForEach(0 ..< sampleImages.count) { value in
                AsyncImage(url: URL(string: sampleImages[value].url!))

            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
