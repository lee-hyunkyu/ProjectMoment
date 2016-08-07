//
//  Note+CoreDataProperties.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/6/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Note {

    @NSManaged var flag: NSNumber?
    @NSManaged var id: String?
    @NSManaged var locationID: String?
    @NSManaged var noteText: String?
    @NSManaged var photoID: String?
    @NSManaged var time: NSDate?
    @NSManaged var titleText: String?
    @NSManaged var radius: NSNumber?
    @NSManaged var locationAmbiguous: NSNumber?
    @NSManaged var parentNotebook: Notebook?

}
