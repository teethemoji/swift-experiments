//
//  LibraryView.swift
//  ImageTrackAR
//
//  Created by 김보영 on 2023/01/21.
//

import SwiftUI

struct LibraryView: View {
        
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ScrollView(showsIndicators: false) {
                
                LazyVStack(alignment: .leading, spacing: 18) {
                    
                    ForEach(0 ..< sampleBooksCategories.count) { value in
                        
                        var tempCategory = sampleBooksCategories[value]
                        
                        Text(sampleBooksCategories[value])
                            .foregroundColor(.accentColor)
                            .font(.title)
                            .fontWeight(.bold)
                            .background(Color.clear)
                            .padding(.leading, 4)
                            .padding(.top, 8)
                        
                        ForEach(0 ..< sampleBooks.count) { value in
                            
                            if(tempCategory == sampleBooks[value].category) {
                                BookCardView(book: sampleBooks[value])
                            }
                        }
                    }
                    
                    Spacer()
                    
                    Text("🏃🏻‍♀️💨🏃🏻‍♀️💨🏃🏻‍♀️💨🏃🏻‍♀️💨🏃🏻‍♂️💨\n\n어린이를 위한 새로운 이야기를 만들기 위해 \n웰테일이 오늘도 노력하고 있어요")
                        .padding()
                        .font(.subheadline)
                    //                        .padding(.bottom, 32)
                        .foregroundColor(Color.secondary)
                        .lineSpacing(4)
                }
            }
        }
        .padding(.horizontal)
    }
    
    struct LibraryView_Previews: PreviewProvider {
        static var previews: some View {
            
            LibraryView()
            
        }
    }
}
