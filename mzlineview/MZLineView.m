//
//  MZLineView.m
//  mzlineview
//
//  Created by zhangzh1 on 15-1-23.
//  Copyright (c) 2015年 HeavenSoft. All rights reserved.
//

#import "MZLineView.h"

@implementation MZLineView

- (id)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.lineColor = [UIColor colorWithRed:219.0f/255.0f green:218.0f/255.0f blue:218.0f/255.0f alpha:1.0f];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor lineColor:(UIColor *)lineColor {
    return [self initWithFrame:frame bgColor:bgColor lineColor:lineColor lineRect:CGRectMake(0, frame.size.height - 0.5, frame.size.width, 0.5)];
}

- (id)initWithFrame:(CGRect)frame {
    return [self initWithFrame:frame bgColor:[UIColor clearColor] lineColor:[UIColor colorWithRed:219.0f/255.0f green:218.0f/255.0f blue:218.0f/255.0f alpha:1.0f] lineRect:CGRectMake(0, frame.size.height - 0.5, frame.size.width, 0.5)];
}

- (id)initWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor lineColor:(UIColor *)lineColor lineRect:(CGRect)lineRect {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = bgColor;
        self.lineColor = lineColor;
        self.lineRect = lineRect;
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    [self.lineColor setFill];
    CGContextFillRect(context, self.lineRect);
    CGContextRestoreGState(context);
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    self.lineRect = CGRectMake(0, frame.size.height - 0.5, frame.size.width, 0.5);
}

@end
