//
//  LatestView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/5/24.
//

import SwiftUI

struct LatestView: View {
    var body: some View {
        
        LatestHeaderView()
            .padding(.horizontal, 8)

        ScrollView(.horizontal) {
            HStack {
                LatestCardView()
                LatestCardView()
                LatestCardView()
                LatestCardView()
                LatestCardView()
            }
        }
        .scrollClipDisabled()
        .scrollIndicators(.hidden)
    }
}

struct LatestHeaderView: View {
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 4) {
            Text("Latest")
                .font(.title)
                .foregroundStyle(.secondary)
            
            Spacer()
            
            // MARK: Category Button
            
            Button {
                
            } label: {
                
                HStack(spacing: 2) {
                    Text("All")
                        .font(.subheadline)
                        .padding(.horizontal, 2)
                    
                    Image(systemName: "chevron.down")
                        .imageScale(.small)
                    
                }
                .foregroundStyle(.gray)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Material.thick)
                .overlay{
                    Capsule()
                        .stroke(style: StrokeStyle(lineWidth: 1))
                        .foregroundStyle(.white)
                }
                .clipShape(Capsule())
            }
        }
    }
}

struct LatestCardView: View {
    
    var body: some View {
        
        HStack(alignment: .top) {
            
                RoundedRectangle(cornerRadius: 12.0)
                    .frame(width: 4.0, height: 28)
                    .foregroundStyle(.gray)
            
                VStack(alignment: .leading) {

                Image(systemName: "paintpalette.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24)
                    
                    VStack {
                        Text("Latest uploaded shortcut")
                            .font(.title3)
                            .padding(.horizontal, 0)
                        
                        Spacer()
                    }
                    .frame(width: 72, height: 108)
            }
        }
        .padding(16)
        .background()
        .clipShape(RoundedRectangle(cornerRadius: 12.0))
        .shadow(color: .gray.opacity(0.25), radius: 4.0)
    }
}

#Preview {
    LatestView()
}
