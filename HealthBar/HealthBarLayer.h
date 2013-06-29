//
//  HealthBarLayer.h
//  HealthBar
//
//  Created by Alvin Tan De Jun on 28/6/13.
//  Copyright 2013 Alvin Tan De Jun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "MenuItemsLayer.h"

@interface HealthBarLayer : CCLayer {
    
    CCProgressTimer *healthBar;
    int life;
    int currentLife;
    
}

@property (nonatomic, readwrite, assign) CCProgressTimer *healthBar;
@property (nonatomic, readwrite) int life;

+(CCScene *) scene;
-(void) hit;

@end
