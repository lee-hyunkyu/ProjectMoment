//
//  Notebook.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/5/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Notebook: NSManagedObject {

    struct Names {
        static let EntityName = "Notebook"
    }
    
    class func createNotebook(notebookName: String, color: UIColor, childOf parent: Notebook?,
                                  withLocation location: Location?,
                                inManagedObjectContext managedObjectContext: NSManagedObjectContext?) -> Notebook? {
        guard let context = managedObjectContext else { return nil }
        
        if let notebook = NSEntityDescription.insertNewObjectForEntityForName(Names.EntityName, inManagedObjectContext: context) as? Notebook {
            notebook.id = NSUUID().UUIDString
            notebook.name = notebookName
            
            // Separate the colors from the UIColor
            var red: CGFloat = 0, blue: CGFloat = 0, green: CGFloat = 0, alpha: CGFloat = 0
            if color.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {  // color retrieval successful
                notebook.colorRed = Float(red)
                notebook.colorBlue = Float(blue)
                notebook.colorGreen = Float(green)
            } else {
                notebook.colorRed = Float(0)
                notebook.colorBlue = Float(0)
                notebook.colorGreen = Float(0)
            }
            
            notebook.isArchived = false
            notebook.parentNotebook = parent
            notebook.hasLocation = location != nil
            notebook.locationID = location?.id
            notebook.hasPerson = false
            notebook.personID = nil
            return notebook
        }
        return nil
    }
    
    class func createNotebook(notebookName: String, color: UIColor, childOf parent: Notebook?,
                              withPersonID personID: String?,
                                           inManagedObjectContext managedObjectContext: NSManagedObjectContext?) -> Notebook? {
        guard let context = managedObjectContext else { return nil }
        
        if let notebook = NSEntityDescription.insertNewObjectForEntityForName(Names.EntityName, inManagedObjectContext: context) as? Notebook {
            notebook.id = NSUUID().UUIDString
            notebook.name = notebookName
            
            // Separate the colors from the UIColor
            var red: CGFloat = 0, blue: CGFloat = 0, green: CGFloat = 0, alpha: CGFloat = 0
            if color.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {  // color retrieval successful
                notebook.colorRed = Float(red)
                notebook.colorBlue = Float(blue)
                notebook.colorGreen = Float(green)
            } else {
                notebook.colorRed = Float(0)
                notebook.colorBlue = Float(0)
                notebook.colorGreen = Float(0)
            }
            
            notebook.isArchived = false
            notebook.parentNotebook = parent
            notebook.hasPerson = personID != nil
            notebook.personID = personID
            notebook.locationID  = nil
            notebook.hasLocation = false
            return notebook
        }
        return nil
        
    }
    
    class func createNotebook(notebookName: String, color: UIColor, childOf parent: Notebook?,
                                           inManagedObjectContext managedObjectContext: NSManagedObjectContext?) -> Notebook? {
        guard let context = managedObjectContext else { return nil }
        if let notebook = NSEntityDescription.insertNewObjectForEntityForName(Names.EntityName, inManagedObjectContext: context) as? Notebook {
            notebook.id = NSUUID().UUIDString
            notebook.name = notebookName
            
            // Separate the colors from the UIColor
            var red: CGFloat = 0, blue: CGFloat = 0, green: CGFloat = 0, alpha: CGFloat = 0
            if color.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {  // color retrieval successful
                notebook.colorRed = Float(red)
                notebook.colorBlue = Float(blue)
                notebook.colorGreen = Float(green)
            } else {
                notebook.colorRed = Float(0)
                notebook.colorBlue = Float(0)
                notebook.colorGreen = Float(0)
            }
            
            notebook.isArchived = false
            notebook.parentNotebook = parent
            notebook.hasPerson = false
            notebook.personID = nil
            notebook.locationID  = nil
            notebook.hasLocation = false
            return notebook
        }
        return nil
    }
    

}
