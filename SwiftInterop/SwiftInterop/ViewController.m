//
//  ViewController.m
//  SwiftInterop
//
//  Created by Wesley St. John on 11/17/15.
//  Copyright © 2015 Mobileforming. All rights reserved.
//

#import "ViewController.h"
#import "OCPublisher.h"
#import "OCSuperhero.h"
#import "OCVillain.h"

#import "SwiftInterop-Swift.h"

@interface ViewController ()
@property (nonatomic, strong) SWSuperhero *hero;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.hero = [[SWSuperhero alloc] init];
    
    [self populateSWHeroWithoutEnemy];
}

- (void)populateSWHeroWithoutEnemy {
    NSError *error;
    [self.hero populate:@"Tim" power:@"Explosions" enemy:nil error:&error];
    if (error) {
        NSLog(@"Error populating Superhero: %@", error.domain);
    }
}

- (void)handleSwiftError:(NSError *)error {

    // ???

}

@end
