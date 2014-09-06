//
//  GridController.m
//  Qbot
//
//  Created by Arturo de Jesús Rodriguez Arteaga on 25/08/14.
//  Copyright (c) 2014 Nopalito Game Studio. All rights reserved.
//

#import "GridController.h"

@implementation GridController {
    float halfColumnSize;
    float halfRowSize;
}

@synthesize numColumns;
@synthesize numRows;
@synthesize columnSize;
@synthesize rowSize;
@synthesize blocksInGrid;

- (GridController *)initWithColumns:(int)numColumns rows:(int)numRows {
    if (self = [super init]) {
        self.numColumns = numColumns;
        self.numRows = numRows;
        self.columnSize = 1.0f / (float)numColumns;
        halfColumnSize = self.columnSize / 2;
        self.rowSize = 1.0f / (float)numRows;
        halfRowSize = self.rowSize / 2;
        int totalTiles = self.numColumns * self.numRows;
        blocksInGrid = [[NSMutableArray alloc] initWithCapacity:totalTiles];
        
        for (int i = 0; i < totalTiles; i++) {
            [blocksInGrid insertObject:[NSNull null] atIndex:i];
        }
    }
    
    return self;
}

- (CGPoint)getPositionAtColumn:(int)columnIndex row:(int)rowIndex {
    CGPoint position;
    
    position.x = self.columnSize * columnIndex + halfColumnSize;
    position.y = self.rowSize * rowIndex + halfRowSize;
    
    return position;
}

- (ColoredBlock *)getColoredBlockAtColumn:(int)columnIndex row:(int)rowIndex {
    return [blocksInGrid objectAtIndex:numColumns * rowIndex + columnIndex];
}

- (void)addColoredBlockAtColumn:(int)columnIndex row:(int)rowIndex {
    ColoredBlock* coloredBlock = [[ColoredBlock alloc] initWithSpriteName:[[GameObjectManager sharedManager] getRandomBlockSpriteName]];
    [coloredBlock resizeSprite:rowSize height:columnSize];
    
    [self.blocksInGrid replaceObjectAtIndex:numColumns * rowIndex + columnIndex withObject:coloredBlock];
    
    [[GameObjectManager sharedManager] addSprite:coloredBlock.sprite atPosition:[self getPositionAtColumn:columnIndex row:rowIndex]];
}

- (void)fillRowsWithColoredBlocks:(int)numRows {
    for (int i = 0; i < numRows; i++) {
        for (int j = 0; j < self.numColumns; j++) {
            [self addColoredBlockAtColumn:j row:i];
        }
    }
}

@end
