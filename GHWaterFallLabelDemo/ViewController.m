//
//  ViewController.m
//  GHWaterFallLabelDemo
//
//  Created by zhaozhiwei on 2019/2/16.
//  Copyright © 2019年 GHome. All rights reserved.
//

#import "ViewController.h"
#import "GHWaterFallLabel.h"
#import "NSString+GHAdd.h"

@interface ViewController ()
@property (nonatomic , strong) GHWaterFallLabel *waterFallLabel;
@property (nonatomic , strong) NSMutableArray *dataArray ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.waterFallLabel];
    self.navigationItem.title = @"流水菜单";

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"切换数据" style:UIBarButtonItemStylePlain target:self action:@selector(refresh)];
    self.waterFallLabel.tags = self.dataArray;
}

- (void)refresh {
    [self.dataArray removeAllObjects];
    for (NSInteger index = 0; index < 40; index++) {
        NSString *str = [NSString arc4randomStringWithCount:6 minCount:2];
        [self.dataArray addObject:str];
    }
    self.waterFallLabel.tags = self.dataArray;
}

- (GHWaterFallLabel *)waterFallLabel {
    if (_waterFallLabel == nil) {
        _waterFallLabel = [[GHWaterFallLabel alloc]initWithFrame:CGRectMake(0, 88, [UIScreen mainScreen].bounds.size.width, 30)];
        [_waterFallLabel setPoint:CGPointMake(0, 88)];
        _waterFallLabel.isMultiple = NO;
        _waterFallLabel.heightBlock = ^(CGFloat height) {
            height = height - 88;
        };
        _waterFallLabel.textBlock = ^(GHWaterFallLabel * _Nonnull waterFallLabel, NSString * _Nonnull text, NSInteger index) {
            
        };
    }
    return _waterFallLabel;
}

- (NSMutableArray *)dataArray {
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
        for (NSInteger index = 0; index < 40; index++) {
            NSString *str = [NSString arc4randomStringWithCount:10 minCount:2];
            [_dataArray addObject:str];
        }
    }
    return _dataArray;
}
@end
