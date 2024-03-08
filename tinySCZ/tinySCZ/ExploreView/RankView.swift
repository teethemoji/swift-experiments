//
//  RankView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftUI

struct RankView: View {
    
    var body: some View {
        
        VStack {
            
            ForEach(1 ..< 4) { rank in
                RankCellView(rank: rank, frameHeight: 88)
            }
            
        }
    }
}

// MARK: RankHeaderView
struct RankHeaderView: View {
    
    // Capsule Button Ver.
        var body: some View {
    
            HStack(alignment: .center, spacing: 4) {
                Text("Most")
                    .font(.title)
                    .foregroundStyle(.secondary)
    
                Spacer()
    
                // MARK: Sort Button
                Button{
    
                } label: {
    
                    HStack(spacing: 2) {
                        Text("Download")
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
    
    // Tappable Text Ver.
//    var body: some View {
//        
//        HStack(spacing: 8) {
//            
//            HStack(alignment: .center) {
//                
//                // MARK: Sort Button
//                Button {
//                    
//                } label: {
//                    HStack(spacing: 4) {
//                        Text("Downloaded")
//                            .font(.title)
//                            .foregroundStyle(Color("CharcoalGray"))
//                            .underline()
//                        Image(systemName: "chevron.down")
//                            .foregroundStyle(Color("CharcoalGray"))
//                        
//                    }
//                }
//            }
//            
//            // MARK: Category Button
//            Button {
//                
//            } label: {
//                
//                HStack(spacing: 4) {
//                    Text("All")
//                        .font(.title)
//                        .foregroundStyle(Color("CharcoalGray"))
//                        .underline()
//                    Image(systemName: "chevron.down")
//                        .foregroundStyle(Color("CharcoalGray"))
//                    
//                }
//                
//            }
//            
//        }
//    }
}

struct RankCellView: View {
    
    var rank : Int
    var frameHeight : CGFloat
    
    var body: some View {
        
        HStack {
            
            HStack(alignment: .center, spacing: 4) {
                
//                RankSeal(rank: rank)
//                    .scaleEffect(CGSize(width: 0.8, height: 0.8))
                
                // TODO : Switch to Image View
                
                RoundedRectangle(cornerRadius: 20.0)
                    .frame(width: frameHeight, height: frameHeight)
                    .foregroundStyle(Color(.systemGray5))
                    .overlay{
                        Image(systemName: "app.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 28, height: 28)
                            .foregroundStyle(.white)
                    }
                
                VStack(alignment: .leading, spacing: 0) {
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
                                .fontDesign(.rounded)
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "heart.fill")
                                .imageScale(.medium)
                            
                            Text("0")
                                .fontDesign(.rounded)
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "ellipsis.bubble.fill")
                                .imageScale(.medium)
                            
                            Text("0")
                                .fontDesign(.rounded)

                        }
                    }
                    .foregroundStyle(.tertiary)
                    
                }
                .frame(maxHeight: frameHeight - 8)
                .padding(12)
                Spacer()
                
            }
        }
    }
}

// MARK: RankSeal
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
                        .foregroundStyle(LinearGradient(colors: [Color.white, Color.clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.0, y: 1.0)))
                        .blendMode(.overlay)
                        .opacity(0.5)
                    
                    Text(String(rank))
                        .foregroundStyle(bronzeGradient)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .shadow(color: .white, radius: 8)
                    
                    Text(String(rank))
                        .foregroundStyle(bronzeGradient)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .blendMode(.multiply)
                    
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
                        .foregroundStyle(LinearGradient(colors: [Color.white, Color.clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.0, y: 1.0)))
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
                        .blendMode(.multiply)
                    
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
                        .foregroundStyle(LinearGradient(colors: [Color.white, Color.clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.0, y: 1.0)))
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
                        .blendMode(.multiply)
                    
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
                        .foregroundStyle(.gray.opacity(0.5))
                        .blendMode(.multiply)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .shadow(color: .white, radius: 8)
                    
                }
                
            } else {
                
                ZStack {
                    
                    LinearGradient(colors: [Color.white, Color.clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.0, y: 1.0))
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                    
                    Text(String(rank))
                        .foregroundStyle(.gray.opacity(0.5))
                        .blendMode(.multiply)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(width: 48)
                        .shadow(color: .white, radius: 8)
                }
                
            }
            
        }
        .shadow(color: .white.opacity(0.5), radius: 8)
    }
}

#Preview{
    RankCellView(rank: 1, frameHeight: 88)
}
