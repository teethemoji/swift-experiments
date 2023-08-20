//
//  UIImage+Extension.swift
//  ImageFetcher
//
//  Created by 김보영 on 2023/03/01.
//

import UIKit

extension UIImageView {
    func loadImageFromURL(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
