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
@property (nonatomic, strong) SWVillain *enemy;
@property (nonatomic, strong) OCSuperhero *ocHero;
@property (nonatomic, strong) OCVillain *ocEnemy;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.hero = [[SWSuperhero alloc] init];
    self.enemy = [[SWVillain alloc] init];
    self.enemy.name = @"Lex Luthor";
    self.enemy.superPower = @"Diabolical Plans";
    
    self.ocHero = [[OCSuperhero alloc] init];
    self.ocEnemy = [[OCVillain alloc] init];
    self.ocEnemy.name = @"Nick Saban";
    self.ocEnemy.superPower = @"Being the devil";
    
    
    [self populateSWHeroWithEnemy:nil];
    [self populateSWHeroWithEnemy:self.enemy];
    
    [self populateOCHeroWithEnemy:nil];
    [self populateOCHeroWithEnemy:self.ocEnemy];
}

- (void)populateSWHeroWithEnemy:(SWVillain *)enemy {
    NSError *error;
    [self.hero populate:@"Superman" power:@"Flying" enemy:enemy error:&error];
    if (error) {
        NSLog(@"OBJC:Swift - Error populating Swift Superhero: %@", error.domain);
    } else {
        NSLog(@"OBJC:Swift - Swift %@ really hates Swift %@", self.hero.name, self.enemy.name);
    }
}

- (void)populateOCHeroWithEnemy:(OCVillain *)enemy {
    NSError *error;
    [self.ocHero populateHeroWithName:@"Gus Malzahn" power:@"Losing games" enemy:enemy error:&error];
    if (error) {
        NSLog(@"OBJC:OBJC - Error populating objectiveC Superhero: %@", error.domain);
    } else {
        NSLog(@"OBJC:OBJC - objectiveC %@ really hates objectiveC %@", self.hero.name, self.enemy.name);
    }
}

@end
