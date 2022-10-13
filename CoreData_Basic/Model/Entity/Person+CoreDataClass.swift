//
//  Person+CoreDataClass.swift
//  CoreData_Basic
//
//  Created by Vitalii Navrotskyi on 13.10.2022.
//
//

import Foundation
import CoreData

@objc(Person)
public class Person: NSManagedObject {
    convenience init() {
        self.init(entity: CoreDataManager.instance.entityForName(entityName: "Person"), insertInto: CoreDataManager.instance.context)
    }

}
