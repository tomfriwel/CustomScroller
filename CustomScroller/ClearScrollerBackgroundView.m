//
//  ClearScrollerBackgroundView.m
//  Pokefolio Editor
//
//  Created by tom on 16/5/4.
//  Copyright © 2016年 jue. All rights reserved.
//

#import "ClearScrollerBackgroundView.h"

@implementation ClearScrollerBackgroundView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

//这样可以不让scroller挡住subview
- (void)tile {
    [super tile];
    [[self contentView] setFrame:[self bounds]];
}

@end
