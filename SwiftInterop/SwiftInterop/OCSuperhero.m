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


//- (void)populateHeroWithName:(NSString *__nullable)name
//                       power:(NSString *__nullable)power
//                       enemy:(OCVillain *__nullable)enemy
//                       error:(__autoreleasing NSError *__nullable *__nullable)error /*NS_SWIFT_NOTHROW*/ {

- (void)populateHeroWithName:(NSString *_Nullable)name
                       power:(NSString *_Nullable)power
                       enemy:(OCVillain *_Nullable)enemy
                       error:(NSError * _Nullable *)error {
    
    if (!name) {
        if (error) {
            *error = [NSError errorWithDomain:@"OCSuperHero" code:OCSuperheroErrorTypeMissingName userInfo:nil];
        }
        return;
    }
    if (!power) {
        if (error) {
            *error = [NSError errorWithDomain:@"OCSuperHero" code:OCSuperheroErrorTypeMissingPower userInfo:nil];
        }
        return;
    }
    if (!enemy) {
        if (error) {
            *error = [NSError errorWithDomain:@"OCSuperHero" code:OCSuperheroErrorTypeMissingEnemy userInfo:nil];
        }
        return;
    }
    
    self.name = name;
    self.superPower = power;
    self.archEnemy = enemy;
    
}

@end
