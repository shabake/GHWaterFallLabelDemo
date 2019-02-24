//
//  NSString+GHAdd.h
//  GHKit
//
//  Created by zhaozhiwei on 2019/2/8.
//  Copyright © 2019年 GHome. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (GHAdd)

- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;

/**
 随机生成文字

 @param count 生成文字的长度
 @param minCount 生成文字的最小长度
 @return 随机文字
 */
+ (NSString *)arc4randomStringWithCount: (NSInteger)count minCount: (NSInteger)minCount;

@end

NS_ASSUME_NONNULL_END
