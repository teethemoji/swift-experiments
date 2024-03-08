//
//  CuratedCardView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftUI

struct CuratedCardView: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            ZStack {
                Image("SampleImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 160)
                    .clipped()
                
                LinearGradient(colors: [Color.clear, Color("BrightColdGray").opacity(0.25)], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.0, y: 1.0))
                
                    .frame(width: .infinity, height: 160)
                
            }
            .clipped()
            
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("천방지축 어리둥절 빙글빙글 돌아가는")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    
                    Text("ShortcutZip Ver 2.0\n제작 과정")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 4)
                .padding(12)
                
                Spacer()
            }
            .background(Color.white)
            
        }
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12)))
        .overlay{
            RoundedRectangle(cornerSize: CGSize(width: 12, height: 12))
                .stroke(style: StrokeStyle(lineWidth: 4))
                .foregroundStyle(Color.white.opacity(0.5))
            
        }
        .padding(6)
    }
}

#Preview {
    
    ZStack {
        
        Color(.systemGray6)
            .ignoresSafeArea()
        
        CuratedCardView()
    }
}
