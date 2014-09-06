//
//  GameObjectManager.h
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 25/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"

@interface GameObjectManager : NSObject

+ (GameObjectManager*) sharedManager;
- (GameObjectManager*) init;
- (void) setCurrentScene:(CCScene*) scene;
- (CCSprite*) addSprite:(CCSprite*) sprite atPosition:(CGPoint) position;
- (void) moveSprite:(CCSprite*) sprite toPosition:(CGPoint)position withDuration:(NSTimeInterval) duration shouldRemoveFromScene:(BOOL)shouldRemoveFromScene;
- (NSString*) getRandomBlockSpriteName;

@end
