//
//  ViewController.swift
//  CountingApp
//
//  Created by 김보영 on 2022/02/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var DidFinishLaunchingLabel: UILabel!
    
    @IBOutlet weak var ConfigurationForConnectingLabel: UILabel!
    
    @IBOutlet weak var WillConnectToOptionsLabel: UILabel!

    @IBOutlet weak var DidBecomeActiveLabel: UILabel!
    
    @IBOutlet weak var WillResignActiveLabel: UILabel!

    @IBOutlet weak var WillEnterActiveLabel: UILabel!
    
    @IBOutlet weak var WillEnterForegroundLabel: UILabel!

    @IBOutlet weak var DidEnterBackgroundLabel: UILabel!
    
}
