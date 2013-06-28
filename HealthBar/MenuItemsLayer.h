//
//  MenuItemsLayer.h
//  HealthBar
//
//  Created by Alvin Tan De Jun on 28/6/13.
//  Copyright 2013 Alvin Tan De Jun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "HelloWorldLayer.h"

@interface MenuItemsLayer : CCLayer {
    
    CCMenuItem *hit;
    CCMenuItem *addHealth;
    CGSize size;
    
}

+(CCScene *) scene;

@end
