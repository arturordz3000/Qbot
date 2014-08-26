//
//  GridController.h
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 25/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "ScreenManager.h"
#import "ColoredBlock.h"

@interface GridController : NSObject

@property int numColumns;
@property int numRows;
@property float columnSize;
@property float rowSize;
@property NSMutableArray* blocksInGrid;

- (GridController*) initWithColumns:(int)numColumns rows:(int)numRows;
- (CGPoint) getPositionAtColumn:(int)columnIndex row:(int)rowIndex;
- (ColoredBlock*) getColoredBlockAtColumn:(int)columnIndex row:(int)rowIndex;

@end
