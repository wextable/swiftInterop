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

@property (nonatomic, strong, nullable) NSString *name;
@property (nonatomic, strong, nullable) NSString *superPower;

@property (nonatomic, strong, nullable) OCVillain *archEnemy;

- (void)populateHeroWithName:(NSString *_Nullable)name
                       power:(NSString *_Nullable)power
                       enemy:(OCVillain *_Nullable)enemy
                       error:(NSError * _Nullable *)error;

@end
