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
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // create context
//        let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        
        // describe the entity
//        guard let entityDescription = NSEntityDescription.entity(forEntityName: "Person", in: context) else { return }
        
        // create instance
        let managedObject = Person(entity: CoreDataManager.instance.entityForName(entityName: "Person"), insertInto: CoreDataManager.instance.context)
        
        // set attributes
        managedObject.name = "Kolya"
        managedObject.age = 11
        
        // unwrap context value form attributes
        let name = managedObject.name
        let age = managedObject.age
        print("\(name) \(age)")
        
        // saving data
//        appDelegate.saveContext()
        CoreDataManager.instance.saveContext()
        
        // extract values from DataBase
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        do {
            let results = try CoreDataManager.instance.context.fetch(fetchRequest)
            for result in results as! [Person] {
                print("name - \(result.name), age - \(result.age)")
            }
        } catch {
            print(error)
        }
        
        // remove ALL data
        do {
            let results = try CoreDataManager.instance.context.fetch(fetchRequest)
            for result in results as! [NSManagedObject] {
                CoreDataManager.instance.context.delete(result)
            }
        } catch {
            print(error)
        }
        
//        CoreDataManager.instance.saveContext()
        
        print("\(name) \(age)")
        
    }
    
    


}

