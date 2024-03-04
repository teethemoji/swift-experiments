//
//  Bubble.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftData

/*
 enum bubbleType {
 case basic
 case unsolvedQuestioon
 case solvedQuestion
 }
 */

@Model
final class Bubble {
    
//    let id: PersistentIdentifier
    var type: Int
    var title: String
    var context: String
    var uploader: String
    var time: String
//    var hearted: [User]
//    var comments: [Comment]

    init(type: Int, title: String, context: String, uploader: String, time: String) {
        
        self.type = type
        self.title = title
        self.context = context
        self.uploader = uploader
        self.time = time
//        self.hearted = hearted
//        self.comments = comments
        
    }
    
    
    var sampleData = [
        
        /*
         Bubble(type: 1, title: "산책하기 좋은 날씨네요", uploader: "개산책러", time: "2min"),
         Bubble(type: 2, title: "혹시 이 문제 해결해 보신 분?", uploader: "밀크티삼형제", time: "16min"),
         Bubble(type: 3, title: "욕심을 덜고 싶은데 어떻게 해야 할까요", uploader: "greedy", time: "8hour")
         */
        
        Bubble(type: 1,
               title: "강아지 산책하기 너무 좋은 날씨네요",
               context: "물론 저는 개가 없어요",
               uploader: "닭1일1팩",
               time: "2024-03-04")
    ]
    
}
