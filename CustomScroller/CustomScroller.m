//
//  CustomScroller.m
//  Pokefolio Editor
//
//  Created by tom on 16/4/22.
//  Copyright © 2016年 jue. All rights reserved.
//

#import "CustomScroller.h"

@implementation CustomScroller

- (void) drawRect:(NSRect)rect{
    [super drawRect:rect];
    // draw background
    [self.backgroundColor set];
    NSRectFill(rect);
    [self drawKnob];
}

//绘制bar
- (void)drawKnob{
    NSRect knobRect = [self rectForPart:NSScrollerKnob];
    NSRect newRect = NSMakeRect(knobRect.origin.x+3, knobRect.origin.y, knobRect.size.width-6, knobRect.size.height);
    NSBezierPath *path = [NSBezierPath bezierPathWithRoundedRect:newRect xRadius:5 yRadius:5];
    NSGradient *gradient = [[NSGradient alloc] initWithColorsAndLocations:
                            [NSColor colorWithRed:1 green:0.41 blue:0.45 alpha:1.00],0.0,
                            [NSColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.00], 1.0,
                            nil];
    [gradient drawInBezierPath:path angle:0];
}

//背景色
-(NSColor *)backgroundColor{
    if (!_backgroundColor) {
//        _backgroundColor = [NSColor whiteColor];
        _backgroundColor = [NSColor clearColor];
    }
    return _backgroundColor;
}

@end
