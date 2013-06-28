//
//  MenuItemsLayer.m
//  HealthBar
//
//  Created by Alvin Tan De Jun on 28/6/13.
//  Copyright 2013 Alvin Tan De Jun. All rights reserved.
//

#import "MenuItemsLayer.h"


@implementation MenuItemsLayer

+(CCScene *) scene{
    
    CCScene *scene = [CCScene node];
    MenuItemsLayer *layer = [MenuItemsLayer node];
    [scene addChild:layer];
    
    return scene;
    
}

-(id)init{
    
    if(self = [super init]){
        
        size = [[CCDirector sharedDirector] winSize];
        
        hit = [CCMenuItemFont itemWithString:@"Hit" target:self selector:@selector(hit)];
        addHealth = [CCMenuItemFont itemWithString:@"Add Health" target:self selector:@selector(addHealth)];
        
        CCMenu *menu = [CCMenu menuWithItems:hit, addHealth, nil];
        [menu alignItemsHorizontallyWithPadding:20];
        menu.position = ccp(size.width/2, size.height/2 - 50);
        [self addChild:menu];
        
    }
    return self;

}

@end
