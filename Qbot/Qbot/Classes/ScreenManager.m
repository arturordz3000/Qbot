//
//  ScreenManager.m
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 25/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import "ScreenManager.h"

@implementation ScreenManager

+ (float) getScreenWidth {
    return [[CCDirector sharedDirector] viewSize].width;
}

+ (float) getScreenHeight {
    return [[CCDirector sharedDirector] viewSize].height;
}

@end
