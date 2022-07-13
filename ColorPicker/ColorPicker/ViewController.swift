//
//  ViewController.swift
//  ColorPicker
//
//  Created by 김보영 on 2022/07/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.backgroundColor = .systemBlue
        button.setTitle("Select Color", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapSelectColor), for: .touchUpInside)
    }
    
    @objc private func didTapSelectColor() {
        
    }


}

