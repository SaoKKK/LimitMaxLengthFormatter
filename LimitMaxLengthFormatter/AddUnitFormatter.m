//
//  AddUnitFormatter.m
//  LimitMaxLengthFormatter
//
//  Created by 河野 さおり on 2016/04/26.
//  Copyright © 2016年 河野 さおり. All rights reserved.
//  http://saokkk.seesaa.net/

#import "AddUnitFormatter.h"

@implementation AddUnitFormatter

- (NSString*)stringForObjectValue:(id)obj{
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
    [format setNumberStyle:NSNumberFormatterDecimalStyle];
    [format setGroupingSeparator:@","];
    [format setGroupingSize:3];
    return [NSString stringWithFormat:@"¥%@",[format stringForObjectValue:[NSNumber numberWithFloat:[obj floatValue]]]];
}

- (BOOL)getObjectValue:(out id  _Nullable __autoreleasing *)obj
             forString:(NSString *)string
      errorDescription:(out NSString *__autoreleasing  _Nullable *)error{
    *obj = string;
    return YES;
}

- (NSString *)editingStringForObjectValue:(id)obj{
    return (NSString*)obj;
}

- (BOOL)isPartialStringValid:(NSString *)partialString newEditingString:(NSString *__autoreleasing  _Nullable *)newString errorDescription:(NSString *__autoreleasing  _Nullable *)error{
    NSCharacterSet *inputChrSet = [NSCharacterSet characterSetWithCharactersInString:partialString];
    if (![[NSCharacterSet decimalDigitCharacterSet] isSupersetOfSet:inputChrSet]) {
        return NO;
    }
    return YES;
}

@end
