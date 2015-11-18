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
        
        populateSWHero(nil)
        populateSWHero(self.enemy)
        
        populateOCHero(nil)
        populateOCHero(self.ocEnemy)
        
    }
    
    func populateSWHero(enemy: SWVillain?) {
        
        defer {
            print("Well, we have at least tried to create a swift hero from a swift class...")
        }
        
        do {
            try self.hero?.populate("Tim", power: "Explosions", enemy: enemy)
            
        } catch SuperHeroError.MissingVillain {
            print("Dude, every hero needs an archenemy!")
            return
            
        } catch {
            print("Something is missing")
            return
        }
        
        print("\(self.hero?.name) really hates \(self.hero?.archEnemy?.name)")
    }
    
    func populateOCHero(enemy: OCVillain?) {
        
        
        
        
    }

}
