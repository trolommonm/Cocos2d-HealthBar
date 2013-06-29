//
//  MenuItemsLayer.h
//  HealthBar
//
//  Created by Alvin Tan De Jun on 28/6/13.
//  Copyright 2013 Alvin Tan De Jun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "HealthBarLayer.h"

@interface MenuItemsLayer : CCLayer {
    
    CCMenuItem *hit;
    CCMenuItem *addHealth;
    CGSize size;
    int currentLife;;
    CCProgressTimer *healthBar;
    
}

@property (nonatomic, assign) CGSize size;

@property (nonatomic) CCProgressTimer *healthBar;

+(CCScene *) scene;
-(CGSize ) getWinSize;

@end
