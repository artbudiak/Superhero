//
//  Profile+CoreDataProperties.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 08.03.2022.
//
//

import Foundation
import CoreData


extension Profile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }

    @NSManaged public var sex: String

}

extension Profile : Identifiable {

}
