//
//  CommunityHeaderView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftUI

struct CommunityHeaderView: View {
    
    var body: some View {
        
        VStack {
            
            HStack {
                // TODO: 카테고리 선택 버튼
                
                HStack {
                    Text("Category")
                        .foregroundStyle(Color("CharcoalGray").opacity(0.64))
                        .padding(.horizontal, 4)
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14)
                        .foregroundStyle(Color("CharcoalGray").opacity(0.64))
                }
                .blendMode(.colorBurn)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Material.thin)
                .clipShape(Capsule())
                
                HStack(spacing: 8) {
                    
                    Image(systemName: "sparkle.magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 14)
                        .foregroundStyle(Color("CharcoalGray").opacity(0.64))
                    
                    Text("빈칸을 채워주는 단어")
                        .foregroundStyle(Color("CharcoalGray").opacity(0.64))
                    
                    Spacer()
                    
                }
                .blendMode(.colorBurn)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Material.thin)
                .clipShape(Capsule())
                
            }
            
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CommunityHeaderView()
}
