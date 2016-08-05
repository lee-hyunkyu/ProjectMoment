//
//  Location.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/5/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import Foundation
import CoreData


class Location: NSManagedObject {

    struct Names {
        static let EntityName = "Location"
    }
    
    class func createLocationWith(name: String?, longitude: Double?, latitude: Double?, address: String?, inManagedObjectContext managedObjectContext: NSManagedObjectContext?) -> Location? {
        guard let context = managedObjectContext else { return nil }
        if let location = NSEntityDescription.insertNewObjectForEntityForName(Names.EntityName, inManagedObjectContext: context) as? Location {
            location.id = NSUUID().UUIDString
            location.address = address
            location.latitude = "\(latitude)"
            location.longitude = "\(longitude)"
            location.name = name
            return location
        }
        return nil
    }

}
