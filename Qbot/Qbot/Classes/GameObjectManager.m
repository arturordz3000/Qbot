//
//  GameObjectManager.m
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 25/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import "GameObjectManager.h"

static GameObjectManager* sharedGameObjectManager = nil;

@implementation GameObjectManager {
    CCScene *currentScene;
    NSMutableArray* blockSpritesNames;
}

+ (GameObjectManager*)sharedManager {
    if (sharedGameObjectManager == nil)
        sharedGameObjectManager = [[GameObjectManager alloc] init];
    
    return sharedGameObjectManager;
}

- (GameObjectManager*) init {
    if (self = [super init]) {
        currentScene = nil;
        blockSpritesNames = [[NSMutableArray alloc] init];
        [blockSpritesNames addObject:@"Blocks_01_128x128_Alt_00_001"];
        [blockSpritesNames addObject:@"Blocks_01_128x128_Alt_00_002"];
        [blockSpritesNames addObject:@"Blocks_01_128x128_Alt_00_003"];
        [blockSpritesNames addObject:@"Blocks_01_128x128_Alt_00_004"];
        [blockSpritesNames addObject:@"Blocks_01_128x128_Alt_00_005"];
        [blockSpritesNames addObject:@"Blocks_01_128x128_Alt_00_006"];
        [blockSpritesNames addObject:@"Blocks_01_128x128_Alt_00_007"];
    }
    
    return self;
}

- (void) setCurrentScene:(CCScene*) scene {
    currentScene = scene;
}

- (CCSprite*)addSprite:(NSString *)spriteName atPosition:(CGPoint)position {
    if (!currentScene) return nil;
    
    CCSprite* sprite = [CCSprite spriteWithImageNamed:spriteName];
    sprite.positionType = CCPositionTypeNormalized;
    sprite.position = position;
    [currentScene addChild:sprite];
    
    return sprite;
}

- (void) moveSprite:(CCSprite*) sprite toPosition:(CGPoint)position withDuration:(NSTimeInterval) duration shouldRemoveFromScene:(BOOL)shouldRemoveFromScene {
    [sprite runAction:[CCActionSequence actions:[CCActionMoveTo actionWithDuration:duration position:position], [CCActionCallBlock actionWithBlock:^{
        [sprite removeFromParentAndCleanup:shouldRemoveFromScene];
    }], nil]];
}

- (NSString *)getRandomBlockSpriteName {
    int randomIndex = arc4random() % [blockSpritesNames count];
    return [blockSpritesNames objectAtIndex:randomIndex];
}

@end
