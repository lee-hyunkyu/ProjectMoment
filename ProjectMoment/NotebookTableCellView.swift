//
//  NotebookTableCellView.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/11/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import UIKit

class NotebookTableCellView: UIView {

    // Model
    var text: String? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    var heightOfCell: CGFloat? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    private lazy var textLabel: UILabel? =  {
        if self.heightOfCell != nil {
            return UILabel(frame: CGRect(x: 8, y: 0, width: 20, height: self.heightOfCell!))
        }
        return nil
    }()   
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        if textLabel != nil {
            textLabel?.text = text
            self.addSubview(textLabel!)
        }
 
    }
    

}
