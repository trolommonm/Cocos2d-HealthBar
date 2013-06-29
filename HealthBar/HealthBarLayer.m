//
//  HealthBarLayer.m
//  HealthBar
//
//  Created by Alvin Tan De Jun on 28/6/13.
//  Copyright 2013 Alvin Tan De Jun. All rights reserved.
//

#import "HealthBarLayer.h"


@implementation HealthBarLayer

@synthesize healthBar = _healthBar;
@synthesize life = _life;

+(CCScene *) scene {
    
    CCScene *scene = [CCScene node];
    HealthBarLayer *layer = [HealthBarLayer node];
    
    [scene addChild:layer];
    
    return scene;
}

-(void) loadLife {
    
    self.life = 100;
    
}

-(void) hit {
    
    currentLife = self.life;
    printf("%i", currentLife);
    currentLife -= 25;
    printf("%i", currentLife);
    [self.healthBar setPercentage:currentLife];
    
}

-(void) loadHealthBar {
    
    CGSize size = [[CCDirector sharedDirector] winSize];
    self.healthBar = [CCProgressTimer progressWithSprite:[CCSprite spriteWithFile:@"greenhealthbar.png"]];
    self.healthBar.type = kCCProgressTimerTypeBar;
    self.healthBar.midpoint = ccp(0, 0);
    self.healthBar.barChangeRate = ccp(1, 0);
    [self.healthBar setScale:5];
    self.healthBar.percentage = self.life;
    self.healthBar.position = ccp(size.width/2, size.height/2);
    [self addChild:self.healthBar];
    
}

-(id) init {
    
    if ( self = [super init] ) {
        
        self.life = 100;
        
        [self loadHealthBar];
        
    }
    
    return self;
    
}

@end
