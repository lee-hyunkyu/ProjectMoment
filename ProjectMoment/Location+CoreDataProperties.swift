//
//  Location+CoreDataProperties.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/5/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Location {

    @NSManaged var id: String?
    @NSManaged var longitude: String?
    @NSManaged var latitude: String?
    @NSManaged var name: String?
    @NSManaged var address: String?

}
