//
//  MaxLenxFormatterAllowInput.h
//  LimitMaxLengthFormatter
//
//  Created by 河野 さおり on 2016/04/25.
//  Copyright © 2016年 河野 さおり. All rights reserved.
//  http://saokkk.seesaa.net/

#import <Foundation/Foundation.h>

@interface MaxLenxFormatterAllowInput : NSFormatter
@property (assign)int maxLength;
+ (void)setMaxLength:(int)maxLength;
+ (id)formatterWithMaxLength:(int)maxLength;
@end
