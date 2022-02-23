//
//  ProfileManager.swift
//  SuperheroBudiak
//
//  Created by Артем Будяк on 21.02.2022.
//

import Foundation
import CoreData

class ProfileManager {
    
    static let sharedInstance = ProfileManager()
    
    private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Profile")
        container.loadPersistentStores { storeDEscription, error in
            if let error = error as NSError? {
                print("Error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    lazy var mainContext: NSManagedObjectContext = {
        return storeContainer.viewContext
    }()
    
    var userProfile: Profile?
    
    func createDefaultProfile(with sex: String) {
        let entity = NSEntityDescription.entity(forEntityName: "Profile", in: mainContext)
        userProfile = Profile(entity: entity!, insertInto: mainContext)
        
        userProfile?.sex = sex
        saveProfile()
    }
    
    func saveProfile() {
        guard mainContext.hasChanges else { return }
        
        do {
            try mainContext.save()
        } catch let nserror as NSError {
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
    
    func getUser() {
        let profileFetchRequest: NSFetchRequest<Profile> = Profile.fetchRequest()
        
        do {
            let result = try mainContext.fetch(profileFetchRequest)
            
            if result.count > 0 {
                userProfile = result.first
            } else {
                userProfile = nil
            }
        } catch let error as NSError  {
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    }
}

