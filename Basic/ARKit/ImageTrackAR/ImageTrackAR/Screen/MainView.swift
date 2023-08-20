//
//  MainView.swift
//  ImageTrackAR
//
//  Created by 김보영 on 2023/01/24.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        TabView {
            
            LibraryView()
                .tabItem {
                    Label("책장", systemImage: "books.vertical")
                }
            
            SettingView()
                .tabItem {
                    Label("설정", systemImage: "gearshape")
                }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
