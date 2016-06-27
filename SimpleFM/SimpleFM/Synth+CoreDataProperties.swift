//
//  Synth+CoreDataProperties.swift
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

extension Synth {

    @NSManaged var oscillatorName: String?
    @NSManaged var oscillatorWave: String?
    @NSManaged var oscillatorValue: NSNumber?
    @NSManaged var fmModulationValue: NSNumber?
    @NSManaged var fmAmountValue: NSNumber?
    @NSManaged var oscillatorAmplitudeValue: NSNumber?
    @NSManaged var oscillatorBlendValue: NSNumber?
    @NSManaged var attackValue: NSNumber?
    @NSManaged var decayValue: NSNumber?
    @NSManaged var sustainValue: NSNumber?
    @NSManaged var releaseValue: NSNumber?
    @NSManaged var reverbValue: NSNumber?
    @NSManaged var delayValue: NSNumber?
    @NSManaged var filterValue: NSNumber?
    @NSManaged var preset: Synth?
    @NSManaged var note: Synth?

}
