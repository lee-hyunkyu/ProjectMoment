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
    
    // Default Flag Color as (Red, Green, Blue, Alpha)
    struct DefaultFlagColor {
        static let Low: (Float, Float, Float, Float) = (0.0, 0.0, 0.0, 0.0)
        static let Medium_Low: (Float, Float, Float, Float) = (0.0, 0.0, 0.0, 0.0)
        static let Medium: (Float, Float, Float, Float) = (0.0, 0.0, 0.0, 0.0)
        static let Medium_High: (Float, Float, Float, Float) = (0.0, 0.0, 0.0, 0.0)
        static let High: (Float, Float, Float, Float) = (0.0, 0.0, 0.0, 0.0)
    }
    
    private lazy var defaultFlags: [Int: Flag] = {
        var defaultFlags = [Int:Flag]()
        
        // Set Low
        var (red, green, blue, alpha) = DefaultFlagColor.Low
        defaultFlags[0] = Flag.Low(0, UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: alpha))
        // Set Medium_Low
        (red, green, blue, alpha) = DefaultFlagColor.Medium_Low
        defaultFlags[1] = Flag.Low(1, UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: alpha))
        // Set Medium
        (red, green, blue, alpha) = DefaultFlagColor.Medium
        defaultFlags[2] = Flag.Low(2, UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: alpha))
        // Set Medium_High
        (red, green, blue, alpha) = DefaultFlagColor.Medium_High
        defaultFlags[3] = Flag.Low(3, UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: alpha))
        // Set High
        (red, green, blue, alpha) = DefaultFlagColor.High
        defaultFlags[4] = Flag.Low(4, UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: alpha))
        return defaultFlags
    }()
    
    
    
    
    
}
