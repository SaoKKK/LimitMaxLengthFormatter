//
//  NegaToRedFormatter.h
//  LimitMaxLengthFormatter
//
//  Created by 河野 さおり on 2016/04/26.
//  Copyright © 2016年 河野 さおり. All rights reserved.
//  http://saokkk.seesaa.net/

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface NegaToRedFormatter : NSFormatter
@property (assign)float maxVal;
+ (void)setMaxVal:(float)maxVal;
+ (id)formatterWithMaxVal:(float)maxVal;
@end
