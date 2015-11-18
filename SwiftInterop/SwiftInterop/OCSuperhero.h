//
//  OCSuperhero.h
//  SwiftInterop
//
//  Created by Wesley St. John on 11/17/15.
//  Copyright © 2015 Mobileforming. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OCVillain;

@interface OCSuperhero : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *superPower;

@property (nonatomic, strong) OCVillain *archEnemy;

- (void)populateHeroWithName:(NSString *)name
                       power:(NSString *)power
                       enemy:(OCVillain *)enemy
                       error:(NSError **)error;

@end
