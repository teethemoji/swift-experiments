//
//  Image.swift
//  wantedPreOnboardingChallenge
//
//  Created by 김보영 on 2023/02/20.
//

import Foundation

class ImageToLoad {
    
    let name: String?
    let url: String?
    
    init(name: String?, url: String?) {
        self.name = name
        self.url = url
    }
    
}

#if DEBUG

let sampleImages: [ImageToLoad] =
[
    ImageToLoad(
        name: "Quickdraw",
        url: "https://github.githubassets.com/images/modules/profile/achievements/quickdraw-default.png"),
    
    ImageToLoad(
        name: "Pair Extraordinaire",
        url: "https://github.githubassets.com/images/modules/profile/achievements/pair-extraordinaire-default.png"),
    
    ImageToLoad(
        name: "Pull Shark",
        url: "https://github.githubassets.com/images/modules/profile/achievements/pull-shark-default.png"),
    
    ImageToLoad(
        name: "YOLO",
        url: "https://github.githubassets.com/images/modules/profile/achievements/yolo-default.png")
]

#endif
