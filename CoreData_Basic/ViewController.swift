//
//  ViewController.swift
//  CoreData_Basic
//
//  Created by Vitalii Navrotskyi on 11.10.2022.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // reference to AppDelegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // create context
        let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        
        // describe the entity
        let entityDescription = NSEntityDescription.entity(forEntityName: "Person", in: context)
        
        // create instance
        let managedObject = NSManagedObject(entity: entityDescription!, insertInto: context)
        
        // set attributes
        managedObject.setValue("Vasya", forKey: "name")
        managedObject.setValue(18, forKey: "age")
        
        // unwrap context value form attributes
        let name = managedObject.value(forKey: "name")
        let age = managedObject.value(forKey: "age")
        print("\(name) \(age)")
        
        // saving data
        appDelegate.saveContext()
        
    }


}

