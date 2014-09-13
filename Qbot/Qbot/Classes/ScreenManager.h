//
//  ScreenManager.h
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 25/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"

@interface ScreenManager : NSObject

+ (float) getScreenWidth;
+ (float) getScreenHeight;
+ (float) getAspectRatio;

@end
