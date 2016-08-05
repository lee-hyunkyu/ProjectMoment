//
//  Note.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/5/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Note: NSManagedObject {
    
    struct Names {
        static let EntityName = "Note"
    }
    
    enum Flag {
        case Low(Int, UIColor)
        case Medium_Low(Int, UIColor)
        case Medium(Int, UIColor)
        case Medium_High(Int, UIColor)
        case High(Int, UIColor)
    }
    
    
}
