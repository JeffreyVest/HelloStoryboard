//
//  MenuButton.m
//  HelloStoryboard
//
//  Created by Jeffrey Vest on 5/14/13.
//  Copyright (c) 2013 Jeffrey Vest. All rights reserved.
//

#import "MenuButton.h"

@implementation MenuButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)drawInContext:(CGContextRef)context
{
}

-(void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
    CGFloat lineHeight = 4;
    CGContextSetLineWidth(context, lineHeight);
    CGContextSetLineCap(context, kCGLineCapRound);
    
    CGFloat startX = 2;
    CGFloat startY = 6;
    CGFloat lineWidth = rect.size.width - startX * 2;
    CGContextMoveToPoint(context, startX, startY);
    CGContextAddLineToPoint(context, lineWidth, startY);
    CGContextStrokePath(context);

    CGFloat y = startY + lineHeight * 2;
    CGContextMoveToPoint(context, startX, y);
    CGContextAddLineToPoint(context, lineWidth, y);
    CGContextStrokePath(context);

    y = startY + lineHeight * 4;
    CGContextMoveToPoint(context, startX, y);
    CGContextAddLineToPoint(context, lineWidth, y);
    CGContextStrokePath(context);
}

@end
