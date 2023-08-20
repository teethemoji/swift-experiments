//
//  ImageModel.swift
//  ImageFetcher
//
//  Created by 김보영 on 2023/03/01.
//

import Foundation
import UIKit

struct ImageCard {
    
    let name: String
    let image: UIImage? = nil
    let urlPath: String
    
}

#if DEBUG

extension ImageCard {
    
    static var sampleData = [
        
        ImageCard(
            name: "First",
            urlPath: "url"
        ),
        
        ImageCard(
            name: "Second",
            urlPath: "url"
        ),
        
        ImageCard(
            name: "Third",
            urlPath: "url"
        ),
        
        ImageCard(
            name: "Fourth",
            urlPath: "url"
        ),
        
        ImageCard(
            name: "Fifth",
            urlPath: "url"
        )
    ]
    
}

#endif
