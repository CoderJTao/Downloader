//
//  DLManager.swift
//  DownLoader
//
//  Created by 江涛 on 2019/4/4.
//  Copyright © 2019 江涛. All rights reserved.
//

import UIKit

class DLManager {
    // 获取单例
    static let sharedInstance = {
        return DLManager()
    }()
    
    var identifier: String {
        get {
            return "Default_Background"
        }
    }
    private let dm_delegate = DLManager_delegate()
    
    private lazy var session: URLSession = {
        let config = URLSessionConfiguration.background(withIdentifier: identifier)
        config.isDiscretionary = true
        config.sessionSendsLaunchEvents = true
        
        return URLSession(configuration: config, delegate: dm_delegate, delegateQueue: nil)
    }()
    
    private var urls: [String] = []
    private var tasks: [URLSessionDownloadTask] = []
    
    private init() {
    }
}


// MARK: - 外部调用
extension DLManager {
    func download(_ urlString: String) -> DLTask? {
        //下载地址
        if !urls.contains(urlString) {
            urls.append(urlString)
        }
        
        let task = DLTask(urlString)
        task.session = self.session
        task.start()
        return task
    }
}

// MARK: - 私有方法
extension DLManager {
    private func createTempFile() {
        
    }
}


