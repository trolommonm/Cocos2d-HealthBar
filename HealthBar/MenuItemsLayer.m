//
//  MenuItemsLayer.m
//  HealthBar
//
//  Created by Alvin Tan De Jun on 28/6/13.
//  Copyright 2013 Alvin Tan De Jun. All rights reserved.
//

#import "MenuItemsLayer.h"


@implementation MenuItemsLayer

@synthesize size = _size;
@synthesize healthBar = _healthBar;

+(CCScene *) scene {
    
    CCScene *scene = [CCScene node];
    MenuItemsLayer *layer = [MenuItemsLayer node];
    [scene addChild:layer];
    
    //HealthBarLayer *healthbarlayer = [HealthBarLayer node];
    //[scene addChild:healthbarlayer];
    
    return scene;
    
}

-(void) loadBar {
    
    //CGSize size = [[CCDirector sharedDirector] winSize];
    self.healthBar = [CCProgressTimer progressWithSprite:[CCSprite spriteWithFile:@"greenhealthbar.png"]];
    self.healthBar.type = kCCProgressTimerTypeBar;
    self.healthBar.midpoint = ccp(0, 0);
    self.healthBar.barChangeRate = ccp(1, 0);
    [self.healthBar setScale:5];
    self.healthBar.percentage = currentLife;
    self.healthBar.position = ccp([self getWinSize].width/2, [self getWinSize].height/2);
    [self addChild:self.healthBar];
    
}

-(void) hit{
    
    //if hit, health -25
    currentLife -= 25;
    [self.healthBar setPercentage:currentLife];
    
}

-(void) addHealth{
    
    //addding health +25
    currentLife += 25;
    [self.healthBar setPercentage:currentLife];
    
}

-(id) init { 
    
    if(self = [super init]){
        
        //init currentLife to be 100%
        currentLife = 100;
        
        size = [self getWinSize];
        
        hit = [CCMenuItemFont itemWithString:@"Hit" target:self selector:@selector(hit)];
        addHealth = [CCMenuItemFont itemWithString:@"Add Health" target:self selector:@selector(addHealth)];
        
        CCMenu *menu = [CCMenu menuWithItems:hit, addHealth, nil];
        [menu alignItemsHorizontallyWithPadding:20];
        menu.position = ccp(size.width/2, size.height/2 - 70);
        [self addChild:menu];
        
        [self loadBar];
        
    }
    
    return self;

}

// Get the Win Size
-(CGSize ) getWinSize {
    
    size = [[CCDirector sharedDirector] winSize];
    
    return size;
    
}

@end
