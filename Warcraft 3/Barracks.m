//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    return self;
}

- (BOOL)canTrainFootman {
    if (self.gold <135 || self.food <2) {
        return NO;
    }
    else {
        return YES;
    }
}

- (BOOL)canTrainPeasant {
    if (self.gold <90 || self.food <5) {
        return NO;
    }
    else {
        return YES;
    }
}

- (Footman *)trainFootman {
    if ([self canTrainFootman]) {
    Footman *footman1 = [[Footman alloc] init];
    self.gold -= 135;
    self.food -= 2;
    return footman1;
}
    else {
        return nil;
    }
}

- (Peasant *)trainPeasant {
 if ([self canTrainPeasant]) {
        Peasant *peasant1 = [[Peasant alloc] init];
        self.gold -= 90;
    self.food -= 5;
        return peasant1;
 }
 else {
     return nil;
 }
}




@end
