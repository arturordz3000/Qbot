//
//  ColoredBlock.h
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 25/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "GameObjectManager.h"
#import "ScreenManager.h"

@interface ColoredBlock : NSObject

@property NSString* spriteName;
@property CCSprite* sprite;

- (ColoredBlock*) initWithSpriteName:(NSString*) spriteName;
- (void) resizeSprite:(float) width height:(float)height;

@end
