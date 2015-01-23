//
//  MZLineView.h
//  mzlineview
//
//  Created by zhangzh1 on 15-1-23.
//  Copyright (c) 2015年 HeavenSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MZLineView : UIView

@property (nonatomic, strong) UIColor *bgColor;
@property (nonatomic, strong) UIColor *lineColor;
@property (nonatomic, assign) CGRect lineRect;

- (id)initWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor lineColor:(UIColor *)lineColor;

@end
