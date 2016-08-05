//
//  Notebook+CoreDataProperties.swift
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

extension Notebook {

    @NSManaged var id: String?
    @NSManaged var name: String?
    @NSManaged var colorRed: NSNumber?
    @NSManaged var colorGreen: NSNumber?
    @NSManaged var colorBlue: NSNumber?
    @NSManaged var isArchived: NSNumber?
    @NSManaged var hasLocation: NSNumber?
    @NSManaged var hasPerson: NSNumber?
    @NSManaged var placeholderTitle1: String?
    @NSManaged var placeholderTitle2: String?
    @NSManaged var placeholderTitle3: String?
    @NSManaged var placeholderTitle4: String?
    @NSManaged var placeholderTitle5: String?
    @NSManaged var placeholderTitle6: String?
    @NSManaged var placeholderTitle7: String?
    @NSManaged var placeholderTitle8: String?
    @NSManaged var placeholderTitle9: String?
    @NSManaged var placeholderTitle10: String?
    @NSManaged var placeholderText1: String?
    @NSManaged var placeholderText2: String?
    @NSManaged var placeholderText3: String?
    @NSManaged var placeholderText4: String?
    @NSManaged var placeholderText5: String?
    @NSManaged var placeholderText6: String?
    @NSManaged var placeholderText7: String?
    @NSManaged var placeholderText8: String?
    @NSManaged var placeholderText9: String?
    @NSManaged var placeholderText10: String?
    @NSManaged var locationID: String?
    @NSManaged var personID: String?
    @NSManaged var subnotebooks: NSSet?
    @NSManaged var subnotes: NSSet?
    @NSManaged var parentNotebook: Notebook?

}
