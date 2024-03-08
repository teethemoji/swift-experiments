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
            ZStack {
                Color(uiColor: UIColor.systemGray6)
                    .ignoresSafeArea()
                ExploreTabView()
            }
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
        } // TabView
    } // body
}

#Preview {
    ContentView()
}
