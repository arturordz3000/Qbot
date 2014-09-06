//
//  ColoredBlock.m
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 25/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import "ColoredBlock.h"

@implementation ColoredBlock

@synthesize sprite;
@synthesize spriteName;

- (ColoredBlock *)initWithSpriteName:(NSString *)spriteName {
    if (self = [super init]) {
        self.spriteName = spriteName;
        self.sprite = [CCSprite spriteWithImageNamed:spriteName];
    }
    
    return self;
}

- (void) resizeSprite:(float) width height:(float)height {
    float normalizedSpriteWidth = self.sprite.textureRect.size.width / [ScreenManager getScreenWidth];
    float normalizedSpriteHeight = self.sprite.textureRect.size.height / [ScreenManager getScreenHeight];
    self.sprite.scaleX = width / normalizedSpriteWidth;
    self.sprite.scaleY = height / normalizedSpriteHeight;
}

@end
