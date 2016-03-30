//
//  LeftAccessoryView.m
//  MapViewSimpleAnnotations
//
//  Created by Aravindhan P on 30/03/16.
//  Copyright © 2016 Aravindhan P. All rights reserved.
//

#import "LeftAccessoryView.h"

@implementation LeftAccessoryView

- (void)drawRect:(NSRect)dirtyRect {
    
    NSColor *blueColor = [NSColor colorWithRed:42.0/255.0 green:174.0/255.0 blue:245.0/255.0 alpha:1.0];
    [blueColor setFill];
    NSRectFill(dirtyRect);
    [super drawRect:dirtyRect];
}

@end
