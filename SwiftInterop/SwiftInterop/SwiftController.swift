//
//  SwiftController.swift
//  SwiftInterop
//
//  Created by Wesley St. John on 11/17/15.
//  Copyright © 2015 Mobileforming. All rights reserved.
//

import UIKit

class SwiftController: UIViewController {
    
    var hero: SWSuperhero?
    var enemy: SWVillain?
    
    var ocHero: OCSuperhero?
    var ocEnemy: OCVillain?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hero = SWSuperhero()
        self.enemy = SWVillain()
        self.enemy?.name = "Lex Luthor"
        self.enemy?.superPower = "Diabolical Schemes"
        
        self.ocHero = OCSuperhero()
        self.ocEnemy = OCVillain()
        self.ocEnemy?.name = "The Joker"
        self.ocEnemy?.superPower = "Face Paint"
        
//        populateSWHero(nil)
//        populateSWHero(self.enemy)
        
        populateOCHero(nil)
//        populateOCHero(self.ocEnemy)
        
    }
    
    func populateSWHero(enemy: SWVillain?) {
        
        defer {
            print("Swift:Swift - Well, we have at least tried to create a swift hero from a swift class...")
        }
        
        do {
            try self.hero?.populate("Superman", power: "Flying", enemy: enemy)
            
        } catch SuperHeroError.MissingVillain {
            print("Swift:Swift - Dude, every hero needs an archenemy!")
            return
            
        } catch {
            print("Swift:Swift - Something is missing")
            return
        }
        
        print("Swift:Swift - Swift \(self.hero?.name) really hates Swift \(self.hero?.archEnemy?.name)")
    }
    
    func populateOCHero(enemy: OCVillain?) {
        
        defer {
            print("Swift:OBJC - Well, we have at least tried to create an objectiveC hero from a swift class...")
        }
        
//        do {
//            try self.ocHero?.populateHeroWithName(Gus Malzahn", power: "Losing games", enemy: enemy)
//            
//        } catch SuperHeroError.MissingVillain {
//            print("Swift:OBJC - Dude, every hero needs an archenemy!")
//            return
//            
//        } catch {
//            print("Swift:OBJC - Something is missing")
//            return
//        }
        
        var err: NSError? = nil
        self.ocHero?.populateHeroWithName("Gus Malzahn", power: "Losing games", enemy:enemy, error: &err)
        
        if let error = err {
            print("Swift:OBJC - error populating objectiveC hero: \(error)")
        } else {
            print("Swift:OBJC - objectiveC \(self.ocHero?.name) really hates objectiveC \(self.ocHero?.archEnemy?.name)")
   
        }
        
    }

}
