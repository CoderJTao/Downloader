//
//  DLManager_delegate.swift
//  DownLoader
//
//  Created by 江涛 on 2019/4/4.
//  Copyright © 2019 江涛. All rights reserved.
//

import UIKit

class DLManager_delegate: NSObject {
    var manager: DLManager?
}

extension DLManager_delegate: URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) {
        
    }
    
    func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
        
    }
    
    //下载代理方法，监听下载进度
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask,
                    didWriteData bytesWritten: Int64, totalBytesWritten: Int64,
                    totalBytesExpectedToWrite: Int64) {
        //获取进度
        let written:CGFloat = (CGFloat)(totalBytesWritten)
        let total:CGFloat = (CGFloat)(totalBytesExpectedToWrite)
        let pro:CGFloat = written/total
        print("下载进度：\(pro)")
    }
    
    
    //下载代理方法，下载结束
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask,
                    didFinishDownloadingTo location: URL) {
        //下载结束
        print("下载结束")
        
        //输出下载文件原来的存放目录
        print("location:\(location)")
        
        let path = NSHomeDirectory() + "/Documents/test.exe"
        
        let fileManager = FileManager.default
        
        do {
            if fileManager.fileExists(atPath: path) {
                try fileManager.removeItem(atPath: path)
            }
            
            try! fileManager.moveItem(atPath: location.path, toPath: path)
        } catch let error as NSError {
            print(error)
        }
    }
    
    // task.cancel() 以及出现错误时
    func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
        
    }
}
