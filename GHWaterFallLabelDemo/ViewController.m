//
//  ViewController.m
//  GHWaterFallLabelDemo
//
//  Created by zhaozhiwei on 2019/2/16.
//  Copyright © 2019年 GHome. All rights reserved.
//

#import "ViewController.h"
#import "GHWaterFallLabel.h"

@interface ViewController ()
@property (nonatomic , strong) GHWaterFallLabel *waterFallLabel;
@property (nonatomic , strong) NSMutableArray *dataArray ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.waterFallLabel];
    self.navigationItem.title = @"流水菜单";
    self.dataArray = @[@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊",@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1",@"2",@"3",@"4",@"呵呵啊",@"呵呵啊呵呵啊呵呵啊呵呵啊"@"1"];
    
    self.waterFallLabel.tags = self.dataArray;

}

- (GHWaterFallLabel *)waterFallLabel {
    if (_waterFallLabel == nil) {
        _waterFallLabel = [[GHWaterFallLabel alloc]initWithFrame:CGRectMake(0, 88, [UIScreen mainScreen].bounds.size.width, 30)];
        [_waterFallLabel setPoint:CGPointMake(0, 88)];
        _waterFallLabel.isMultiple = NO;
        _waterFallLabel.heightBlock = ^(CGFloat height) {
            
        };
        _waterFallLabel.textBlock = ^(GHWaterFallLabel * _Nonnull waterFallLabel, NSString * _Nonnull text, NSInteger index) {
            
        };
    }
    return _waterFallLabel;
}
@end
