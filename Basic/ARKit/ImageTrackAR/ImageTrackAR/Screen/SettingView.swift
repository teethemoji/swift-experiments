//
//  SettingView.swift
//  ImageTrackAR
//
//  Created by 김보영 on 2023/01/24.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        NavigationStack {
            
            List {
                NavigationLink("앱 정보", value: "AppInfo")
                NavigationLink("만든 사람들", value: "Credits")
                NavigationLink("버전", value: "Version")
            }
            .navigationTitle("설정")
            
            Image("tempAppLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 64)
                .padding(.bottom, 12)
                .opacity(0.6)
            
            Text("좋은 이야기가 함께하는 웰테일")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .lineSpacing(2)
                .padding(.bottom, 32)

        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
