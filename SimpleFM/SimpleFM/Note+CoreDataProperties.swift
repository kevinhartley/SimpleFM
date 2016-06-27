//
//  Note+CoreDataProperties.swift
//  SimpleFM
//
//  Created by Kevin Hartley on 6/24/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Note {

    @NSManaged var textBody: String?
    @NSManaged var synth: Note?

}
