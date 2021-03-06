//
//  MaxLenxFormatterAllowInput.m
//  LimitMaxLengthFormatter
//
//  Created by 河野 さおり on 2016/04/25.
//  Copyright © 2016年 河野 さおり. All rights reserved.
//  http://saokkk.seesaa.net/

#import "MaxLenxFormatterAllowInput.h"

@implementation MaxLenxFormatterAllowInput
@synthesize maxLength;

+ (void)setMaxLength:(int)maxLength{
    maxLength = maxLength;
}

+ (id)formatterWithMaxLength:(int)maxLength{
    id formatter = [[MaxLenxFormatterAllowInput alloc]init];
    [formatter setMaxLength:maxLength];
    return formatter;
}

- (NSString*)stringForObjectValue:(id)obj{
    return (NSString*)obj;
}

- (BOOL)getObjectValue:(out id  _Nullable __autoreleasing *)obj
             forString:(NSString *)string
      errorDescription:(out NSString *__autoreleasing  _Nullable *)error{
    if ([string length] > maxLength) {
        *obj = [string substringToIndex:maxLength];
    }else{
        *obj = string;
    }
    return YES;
}

@end
