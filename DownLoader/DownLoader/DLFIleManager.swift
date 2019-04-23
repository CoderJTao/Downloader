//
//  DLFIleManager.swift
//  DownLoader
//
//  Created by 江涛 on 2019/4/4.
//  Copyright © 2019 江涛. All rights reserved.
//

import UIKit

class DLFIleManager {
    
//    private let ioQueue: DispatchQueue
//
//    public let downloadPath: String
//
//    public let downloadTmpPath: String
//
//    public let downloadFilePath: String
//
//    public let name: String
    
    private let fileManager = FileManager.default
    
    private final class func defaultDiskCachePathClosure(_ cacheName: String) -> String {
        let dstPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
        return (dstPath as NSString).appendingPathComponent(cacheName)
    }
    
    init() {
        
    }

}
