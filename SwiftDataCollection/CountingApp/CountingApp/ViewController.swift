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
    var finishLaunchCount = 0
    
    @IBOutlet weak var ConfigurationForConnectingLabel: UILabel!
    var configurationForConnectingCount = 0
    
    @IBOutlet weak var WillConnectToOptionsLabel: UILabel!
    var willConnectToOptionsCount = 0
    
    @IBOutlet weak var DidBecomeActiveLabel: UILabel!
    var didBecomeActiveCount = 0
    
    @IBOutlet weak var WillResignActiveLabel: UILabel!
    var willResignActiveCount = 0
    
    @IBOutlet weak var WillEnterActiveLabel: UILabel!
    var willEnterActiveCount = 0
    
    @IBOutlet weak var WillEnterForegroundLabel: UILabel!
    var willEnterForegroundCount = 0
    
    @IBOutlet weak var DidEnterBackgroundLabel: UILabel!
    var didEnterBackgroundCount = 0
}
