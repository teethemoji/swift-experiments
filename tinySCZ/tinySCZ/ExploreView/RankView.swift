//
//  RankView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftUI

struct RankView: View {
    var body: some View {
        
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    RankHeaderView()
                    RankCellView(rank: 1, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 2, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 3, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 4, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 5, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 6, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 7, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 8, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 9, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 10, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 11, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 12, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 13, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 14, frameHeight: geometry.size.height * 0.125)
                    RankCellView(rank: 15, frameHeight: geometry.size.height * 0.125)
                }
            }
        }
    }
}

struct RankHeaderView: View {
    var body: some View {
        
        HStack(spacing: 8) {
            Text("Rank")
                .font(.title)
            
            Spacer()
            
            // MARK: Sort Button
            Button{
                
            } label: {
                
                HStack(spacing: 4) {
                    Text("Download")
                    Image(systemName: "chevron.down")
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
            
            // MARK: Category Button
            
            Button{
                
            } label: {
                
                HStack(spacing: 4) {
                    Text("All")
                    Image(systemName: "chevron.down")
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

struct RankCellView: View {
    
    var rank : Int
    var frameHeight : CGFloat
    
    var body: some View {
        
        HStack {
            
            HStack(alignment: .top) {
                
                RankSeal(rank: rank)
                
                // TODO : Switch to Image View
                
                RoundedRectangle(cornerRadius: 12.0)
                    .frame(width: frameHeight * 1.25, height: frameHeight * 1.25)
                    .foregroundStyle(.gray)
                
                VStack(alignment: .leading) {
                    Text("Shortcut")
                        .font(.title3)
                    Text("One-line description")
                        .foregroundStyle(.secondary)
                    Spacer()
                    
                    HStack(spacing: 16) {
                        
                        HStack(spacing: 4) {
                            Image(systemName: "arrow.down.to.line")
                                .imageScale(.medium)
                            Text("0")
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "heart.fill")
                                .imageScale(.medium)
                            
                            Text("0")
                        }
                    }
                    .foregroundStyle(.gray)
                    
                }
                .frame(height: frameHeight)
                
                .padding(8)
                Spacer()
                
            }
        }
    }
}

struct RankSeal : View {
    
    @State var rank : Int
    
    var body: some View {
        
        ZStack {
            
            if rank <= 10 {
                
                switch rank {
                    
                case 3:
                    
                    Image(systemName: "seal.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(bronzeGradient)
                    
                    Image(systemName: "seal")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(bronzeGradient)
                        .blendMode(.overlay)
                    
                    Image(systemName: "seal")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(bronzeGradient)
                        .blendMode(.overlay)
                        .opacity(0.5)
                    
                    Text(String(rank))
                        .foregroundStyle(bronzeGradient)
                        .blendMode(.multiply)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .shadow(color: .white, radius: 8)
                    
                    Text(String(rank))
                        .foregroundStyle(bronzeGradient)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                case 2:
                    
                    Image(systemName: "seal.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(silverGradient)
                    
                    Image(systemName: "seal")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(silverGradient)
                        .blendMode(.overlay)
                    
                    Image(systemName: "seal")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(silverGradient)
                        .blendMode(.overlay)
                        .opacity(0.5)
                    
                    
                    Text(String(rank))
                        .foregroundStyle(silverGradient)
                        .blendMode(.multiply)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .shadow(color: .white, radius: 8)
                    
                    Text(String(rank))
                        .foregroundStyle(silverGradient)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                case 1:
                    
                    Image(systemName: "seal.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(goldGradient)
                    
                    Image(systemName: "seal")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(goldGradient)
                        .blendMode(.overlay)
                    
                    Image(systemName: "seal")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .foregroundStyle(goldGradient)
                        .blendMode(.overlay)
                        .opacity(0.5)
                    
                    
                    Text(String(rank))
                        .foregroundStyle(goldGradient)
                        .blendMode(.multiply)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .shadow(color: .white, radius: 8)
                    
                    Text(String(rank))
                        .foregroundStyle(goldGradient)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    
                default:
                                            
                        Image(systemName: "seal.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(LinearGradient(colors: [Color.white, Color.clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.0, y: 1.0)))
                        
                        Image(systemName: "seal")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(LinearGradient(colors: [Color.white, Color.clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.0, y: 1.0)))
                            .blendMode(.overlay)
                        
                        Image(systemName: "seal")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(LinearGradient(colors: [Color.white, Color.clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.0, y: 1.0)))
                            .blendMode(.overlay)
                            .opacity(0.5)
                    
                    Text(String(rank))
                        .foregroundStyle(Color("CharcoalGray"))
                        .blendMode(.multiply)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .shadow(color: .white, radius: 8)
                    
                    Text(String(rank))
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                }
                
            }
            
        }
        .shadow(color: .white.opacity(0.5), radius: 8)
    }
}

#Preview {
    
    ZStack {
        Color("CharcoalGray").opacity(0.08)
        
        RankView()
    }
}
