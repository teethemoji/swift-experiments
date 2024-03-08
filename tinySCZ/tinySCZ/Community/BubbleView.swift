//
//  BubbleView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftUI

// TODO: Bubble Type 나누기
/*
 - 기본 타입(잡담, 정보 쉐어 용도)
 - 질문 타입
 - 해결되지 않은 질문
 - 해결된 질문
 */

struct BubbleView: View {
    
    @State private var frameHeightShrunkenImage = 128.0
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            // Header
            HStack {
                HStack {
                    Text("Title")
                    Text("time")
                        .foregroundStyle(.gray.opacity(0.5))
                }
                Spacer()
                Text("Sender")
            }
            .padding(8)
            .padding(.horizontal, 4)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12)))
            
            // Body
            // Image
            HStack {
                RoundedRectangle(cornerSize: CGSize(width: 12, height: 12))
                    .foregroundStyle(Color.gray.opacity(0.25))
            }
            .frame(height: frameHeightShrunkenImage)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12)))
            
            // Footer
            
            VStack(spacing: 12) {
                HStack(spacing: 12){
                    HStack(spacing: 4){
                        Image(systemName: "heart.fill")
                        Text("0")
                        
                    }
                    HStack(spacing: 4){
                        Image(systemName: "ellipsis.bubble.fill")
                        Text("0")
                    }
                    
                    Spacer()
                }
                .foregroundStyle(.gray.opacity(0.5))
                .padding(.horizontal, 8)
                .padding(.horizontal, 4)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12)))
                
                // Divider
                //                Capsule()
                //                    .frame(width: .infinity, height: 1.0)
                //                    .padding(.horizontal, 8)
                //                    .foregroundStyle(.gray.opacity(0.25))
                
                HStack(alignment: .top) {
                    Color.gray.opacity(0.25)
                        .clipShape(Circle())
                        .frame(width: 36, height: 36)
                    
                    VStack(alignment: .leading) {
                        
                        HStack {
                            
                            Text("Commentor")
                                .fontWeight(.medium)
                            
                            Text("time")
                                .foregroundStyle(.gray.opacity(0.5))
                            
                            Spacer()
                            
                        }
                        
                        Text("Comment")
                    }
                }
                .padding(.horizontal, 8)
                
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 4)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12)))
            
        }
        .padding(.horizontal, 16)
        //            .shadow(color: Color.gray.opacity(0.2), radius: 4)
    }
}

struct PinnedBubbleView : View {
    
    var body: some View {
        
        Button{
            // TODO: Dismiss Action
            
        } label: {
            
            HStack {
                
                VStack(alignment: .leading) {
                    HStack(spacing: 4) {
                        Image(systemName: "envelope.fill")
                        Text("Description")
                    }
                    Text("Message from SCZ team")
                        .fontWeight(.semibold)
                }
                Spacer()
                
                VStack {
                    Image(systemName: "xmark")
                }
            }
            .padding()
            .background(Color.white.opacity(0.75))
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12)))
            .overlay{
                RoundedRectangle(cornerSize: CGSize(width: 12, height: 12))
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round))
                    .foregroundStyle(Color.white)
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    ZStack {
        Color("CharcoalGray").opacity(0.08)
        VStack {
            
            PinnedBubbleView()
            BubbleView()
            
        }
    }
}
