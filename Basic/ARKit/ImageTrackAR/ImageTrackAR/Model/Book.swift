//
//  Book.swift
//  ImageTrackAR
//
//  Created by 김보영 on 2023/01/21.
//

import Foundation
import SwiftUI

class Book{
    let publishedDate: Date?
    let category: String?
    let title: String?
    let description: String?
    let bookCover: String?
    let thumbnailImage: String?
    let bookMarked: Bool?
    
    init(publishedDate: Date, category: String, title: String, description: String, bookCover: String, thumbnailImage: String, bookMarked: Bool){
        self.publishedDate = publishedDate
        self.category = category
        self.title = title
        self.description = description
        self.bookCover = bookCover
        self.thumbnailImage = thumbnailImage
        self.bookMarked = bookMarked
    }
}

#if DEBUG

let sampleBooksCategories: [String] = ["자연", "성", "수학", "기술"]

let sampleBooks: [Book] =
[    
    Book(
        publishedDate: Date.now,
        category: "자연",
        title: "벌새부터 코끼리까지",
        description: "우리 주변 크고 작은 동물들",
        bookCover: "treeImage",
        thumbnailImage: "treeImage",
        bookMarked: true),
    
    Book(
        publishedDate: Date.now,
        category: "자연",
        title: "개미부터 사마귀까지",
        description: "우리 주변 크고 작은 곤충들",
        bookCover: "treeImage",
        thumbnailImage: "treeImage",
        bookMarked: true),
    Book(
        publishedDate: Date.now,
        category: "성",
        title: "꽃게와 갈매기의 바다상담소",
        description: "바다가 들려주는 우리 몸",
        bookCover: "tempBookCover",
        thumbnailImage: "tempBookCover",
        bookMarked: false
    ),
    
    Book(
        publishedDate: Date.now,
        category: "수학",
        title: "1, 2, 3!",
        description: "1부터 10까지 숫자를 세어 보자",
        bookCover: "CircularLines",
        thumbnailImage: "CircularLines",
        bookMarked: true
    ),
    
    Book(
        publishedDate: Date.now,
        category: "기술",
        title: "Sculpture",
        description: "조형의 기본을 다루는",
        bookCover: "VariousMaterial",
        thumbnailImage: "VariousMaterial",
        bookMarked: false
    )
]

#endif
