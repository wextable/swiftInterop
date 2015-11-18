//
//  SWSuperhero.swift
//  SwiftInterop
//
//  Created by Wesley St. John on 11/17/15.
//  Copyright © 2015 Mobileforming. All rights reserved.
//

import Foundation

enum SuperHeroError: ErrorType {
    case MissingName
    case MissingPower
    case MissingVillain
}

class SWSuperhero: NSObject {
    
    /*
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *superPower;

@property (nonatomic, strong) OCVillain *archEnemy;
*/
    var name: String?
    var superPower: String?
    var archEnemy: SWVillain?
    
    func populate(name: String?, power: String?, enemy: SWVillain?) throws {
        
        guard let n = name else {
            throw SuperHeroError.MissingName
        }
        guard let p = power else {
            throw SuperHeroError.MissingPower
        }
        guard let e = enemy else {
            throw SuperHeroError.MissingVillain
        }
        
        self.name = n
        self.superPower = p
        self.archEnemy = e
 
    }

}
