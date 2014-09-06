//
//  DemoMainScene.m
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 16/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import "DemoMainScene.h"

@implementation DemoMainScene {
    GridController* gridController;
}

+ (DemoMainScene*) scene {
    return [[self alloc] init];
}

- (id) init {
    self = [super init];
    if (!self) return nil;
    
    /* 
     * Init all stuff here!
     */
    
    // Enable touch handling on scene node
    self.userInteractionEnabled = YES;
    
    // Create a colored background (Dark Grey)
    CCNodeColor *background = [CCNodeColor nodeWithColor:[CCColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f]];
    [self addChild:background];
    
    [[GameObjectManager sharedManager] setCurrentScene:self];
    gridController = [[GridController alloc] initWithColumns:10 rows:20];
    [gridController fillRowsWithColoredBlocks:2];
    
    return self;
}

- (void) initScene {
    
}

- (void) onEnter {
    [super onEnter];
}

- (void) onExit {
    [super onExit];
}

@end
