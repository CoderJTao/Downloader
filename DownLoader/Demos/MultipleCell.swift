//
//  MultipleCell.swift
//  DownLoader
//
//  Created by 江涛 on 2019/4/18.
//  Copyright © 2019 江涛. All rights reserved.
//

import UIKit

protocol MultipleCellDelegate: AnyObject {
    func start(_ cell: MultipleCell)
    
    func pause(_ cell: MultipleCell)
    
    func resume(_ cell: MultipleCell)
    
    func stop(_ cell: MultipleCell)
}

class MultipleCell: UITableViewCell {
    
    var url: String = ""
    
    weak var delegate: MultipleCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func startClick(_ sender: Any) {
        self.delegate?.start(self)
    }
    
    @IBAction func pauseClick(_ sender: Any) {
        self.delegate?.pause(self)
    }
    
    @IBAction func resumeClick(_ sender: Any) {
        self.delegate?.resume(self)
    }
    
    @IBAction func stopClick(_ sender: Any) {
        self.delegate?.stop(self)
    }
}
