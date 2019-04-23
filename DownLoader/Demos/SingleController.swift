//
//  SingleController.swift
//  DownLoader
//
//  Created by 江涛 on 2019/4/18.
//  Copyright © 2019 江涛. All rights reserved.
//

import UIKit

class SingleController: UIViewController {

    private let url = "https://dldir1.qq.com/qqfile/qq/PCQQ9.1.1/24953/QQ9.1.1.24953.exe"
    
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startClick(_ sender: Any) {
        DLManager.sharedInstance.download(url)
    }
    
    @IBAction func pauseClick(_ sender: Any) {
    }
    
    @IBAction func resumeClick(_ sender: Any) {
    }
    
    @IBAction func stopClick(_ sender: Any) {
    }
}
