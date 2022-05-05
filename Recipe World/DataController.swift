//
//  DataController.swift
//  Recipe World
//
//  Created by Haider  Akbar on 05/05/2022.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name:"Recipe_World")
    
    init() {
        container.loadPersistentStores { descriptoin, error in
            if  let error = error {
                print("Core Data failed to load:\(error.localizedDescription)")
            }
        }
    }
}
  
