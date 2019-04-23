//
//  DLTask.swift
//  DownLoader
//
//  Created by 江涛 on 2019/4/4.
//  Copyright © 2019 江涛. All rights reserved.
//

import UIKit

class DLTask {
    var url: String?
    
    var session: URLSession?
    
    private var downloadtTask: URLSessionDownloadTask?
    
    
    init(_ url: String) {
        self.url = url
    }
}


extension DLTask {
    func start() {
        guard let session = self.session else {
            return
        }
        
        let useUrl = URL(string: self.url!)!
        
        let backgroundTask = session.downloadTask(with: useUrl)
        backgroundTask.resume()
    }
}

