//
//  OCSuperhero.m
//  SwiftInterop
//
//  Created by Wesley St. John on 11/17/15.
//  Copyright © 2015 Mobileforming. All rights reserved.
//

#import "OCSuperhero.h"
#import "OCVillain.h"

typedef NS_ENUM(NSInteger, OCSuperheroErrorType) {
    OCSuperheroErrorTypeMissingName,
    OCSuperheroErrorTypeMissingPower,
    OCSuperheroErrorTypeMissingEnemy
};

@implementation OCSuperhero


- (void)populateHeroWithName:(NSString *)name
                       power:(NSString *)power
                       enemy:(OCVillain *)enemy
                       error:(NSError **)error {

    if (!name) {
        *error = [NSError errorWithDomain:@"OCSuperHero" code:OCSuperheroErrorTypeMissingName userInfo:nil];
        return;
    }
    if (!power) {
        *error = [NSError errorWithDomain:@"OCSuperHero" code:OCSuperheroErrorTypeMissingPower userInfo:nil];
        return;
    }
    if (!enemy) {
        *error = [NSError errorWithDomain:@"OCSuperHero" code:OCSuperheroErrorTypeMissingEnemy userInfo:nil];
        return;
    }
    
    self.name = name;
    self.superPower = power;
    self.archEnemy = enemy;
    
}

@end
