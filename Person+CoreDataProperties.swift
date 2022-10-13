//
//  Person+CoreDataProperties.swift
//  CoreData_Basic
//
//  Created by Vitalii Navrotskyi on 13.10.2022.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var age: Int16
    @NSManaged public var name: String?

}

extension Person : Identifiable {

}
