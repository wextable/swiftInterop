//
//  OCPublisher.h
//  SwiftInterop
//
//  Created by Wesley St. John on 11/17/15.
//  Copyright © 2015 Mobileforming. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OCSuperhero;

@interface OCPublisher : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) OCSuperhero *mainHero;


@end
