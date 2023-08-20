//
//  ScrollView+Extension.swift
//  ImageTrackAR
//
//  Created by 김보영 on 2023/01/25.
//

// 출처 : https://philip-trauner.me/blog/post/swiftui-scrollview-clips-to-bounds

import UIKit

extension UIScrollView {
  open override var clipsToBounds: Bool {
    get { false }
    set { }
  }
}
