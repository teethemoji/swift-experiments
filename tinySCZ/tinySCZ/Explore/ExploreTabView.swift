//
//  ExploreTabView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftUI

struct ExploreTabView: View {
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack {
                //
                //            HStack {
                //                Image("SampleImage")
                //                    .frame(width: 24, height: 24)
                //                    .clipShape(Circle())
                //                    .overlay{
                //                        Circle()
                //                            .stroke(lineWidth: 2.0)
                //                    }
                //
                //                Spacer()
                //                Image(systemName: "sparkle.magnifyingglass")
                //                    .resizable()
                //                    .scaledToFill()
                //                    .frame(width: 24, height: 24)
                //            }
                //            .zIndex(1.0)
                //            .padding(.horizontal, 8)
                
                ScrollView(.horizontal) {
                    
                    LazyHStack(alignment: .center) {
                        
                        CuratedCardView()
                        
                        CuratedCardView()
                        
                        CuratedCardView()
                    }
                    .scrollTargetLayout()
                    .padding(.horizontal, 32)
                }
                .scrollClipDisabled()
                .scrollTargetBehavior(.viewAligned)
                .mask {
                    HStack(spacing: 0) {
                        // Left gradient
                        LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.25), Color.black]), startPoint: .leading, endPoint: .trailing)
                        .frame(width: 64)
                        
                        // Middle
                        Rectangle().fill(Color.black)
                        
                        // Right gradient
                        LinearGradient(gradient: Gradient( colors: [Color.black, Color.black.opacity(0.25)]), startPoint: .leading, endPoint: .trailing
                        )
                        .frame(width: 64)
                    }
                } // mask
                
                // TODO: Make it actually work
                HStack {
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundStyle(.white)
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundStyle(.tertiary)
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundStyle(.tertiary)
                }
                .padding(.vertical, 8)
                
                VStack(spacing: 8) {
                    RankHeaderView()
                        .padding(.horizontal, 8)
                    
                    RankView()
                    
                    Button {
                        
                        // TODO: Navigate to List of Rank View
                        
                    } label: {
                        HStack {
                            Spacer()
                            Text("more")
                        }
                    }
                }
                .padding(.horizontal, 12)

                
                LatestView()
                    .padding(.horizontal, 12)

            }

            }
            .scrollClipDisabled()
            .scrollIndicators(.hidden)
            
            .background{
                
                ZStack {
                    Color(.systemGray6)
                    
                    //                silverGradient
                    //                    .blendMode(.colorBurn)
                    
                }
                .ignoresSafeArea()
            }
    }
}

#Preview {
    ExploreTabView()
}
