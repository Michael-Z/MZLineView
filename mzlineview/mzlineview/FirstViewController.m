//
//  FirstViewController.m
//  mzlineview
//
//  Created by zhangzh1 on 15-1-23.
//  Copyright (c) 2015年 HeavenSoft. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property(nonatomic, strong) MZLineView* lineView1;
@property(nonatomic, strong) MZLineView* lineView2;
@property(nonatomic, strong) IBOutlet MZLineView* lineView3;

@end

@implementation FirstViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.lineView1];
    [self.view addSubview:self.lineView2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getters
- (MZLineView*)lineView1{
    _lineView1 = [[MZLineView alloc] initWithFrame:CGRectZero];
    _lineView1.lineColor = [UIColor redColor];
    _lineView1.frame = CGRectMake(0, 100, self.view.frame.size.width, 1);
    return _lineView1;
}

- (MZLineView*)lineView2{
    _lineView2 = [[MZLineView alloc] initWithFrame:CGRectZero];
    _lineView1.lineColor = [UIColor blueColor];
    _lineView2.frame = CGRectMake(0, 140, self.view.frame.size.width, 1);
    return _lineView2;
}

@end
