//
//  BookCardView.swift
//  ImageTrackAR
//
//  Created by 김보영 on 2023/01/23.
//

import SwiftUI

struct BookCardView: View {
    
    //TODO: folded/expanded 버전을 나누어서 작업을 해야 하겠조
    /*
     
     folded ver
     - 제목
     - 즐겨찾기
     - 섬네일 이미지
     
     expanded ver
     - 제목
     - 즐겨찾기 표시
     - 북커버 이미지
     - 책 설명
     - 독서 시작 버튼
     
     */
    
    @Environment(\.colorScheme) var colorScheme

    let book: Book
    
    var body: some View {
        
        ZStack {
            
            Image(book.bookCover!)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 104, alignment: .center)
                .cornerRadius(12)
                .clipped()
                .blur(radius: 3)
                .opacity(0.4)
            
            HStack {
                
                VStack(alignment: .leading) {
                    
                    Text(book.description!)
                        .font(.subheadline)
                                        
                    Text(book.title!)
                        .fontWeight(.bold)
                        .font(.title)
                    
                }
                .padding(.leading, 24)
                
                Spacer()
                
            }
        }
    }
}
struct BookCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        BookCardView(book: sampleBooks[0])
        
    }
}
