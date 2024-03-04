//
//  ContentView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        TabView {
            RankView()
                .padding(.horizontal, 16)
                .tabItem {
                    
                    Label("Explore", systemImage: "bubbles.and.sparkles")
                }
            
            CommunityTabView()
                .background(Color(.systemGray6))
                .tabItem {
                    
                    Label("Board", systemImage: "rectangle.3.group.bubble")
                }
            
            Text("Notification")
                .tabItem {
                    
                    Label("Search", systemImage: "sparkle.magnifyingglass")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
