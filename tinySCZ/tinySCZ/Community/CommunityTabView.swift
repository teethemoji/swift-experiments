//
//  CommunityTabView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftUI

struct CommunityTabView: View {
        
    var body: some View {
        
        VStack {
            
            // MARK: Header
            CommunityHeaderView()
            
            // MARK: Body
            ScrollView {

                VStack(spacing: 16) {
                    
                    PinnedBubbleView()
                    
                    BubbleView()
                    BubbleView()
                    BubbleView()
                    BubbleView()
                    BubbleView()
                    
                }
                .padding(.bottom, 128)
            }
            .zIndex(-1.0)
            .scrollClipDisabled()
            .scrollIndicators(.hidden)
            
            // MARK: Footer
            // Infinite scroll view니까 Footer의 필요가 없을지도?
            Spacer()
            
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

#Preview {
    CommunityTabView()
        .background(Color(.systemGray6))
}
