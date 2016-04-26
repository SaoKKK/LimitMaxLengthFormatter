//
//  NegaToRedFormatter.m
//  LimitMaxLengthFormatter
//
//  Created by 河野 さおり on 2016/04/26.
//  Copyright © 2016年 河野 さおり. All rights reserved.
//

#import "NegaToRedFormatter.h"

@implementation NegaToRedFormatter
@synthesize maxVal;

+ (void)setMaxVal:(float)maxVal{
    maxVal = maxVal;
}

+ (id)formatterWithMaxVal:(float)maxVal{
    id formatter = [[NegaToRedFormatter alloc]init];
    [formatter setMaxVal:maxVal];
    return formatter;
}

- (NSString*)stringForObjectValue:(id)obj{
    return [NSString stringWithFormat:@"%.1f", [obj floatValue]];
}

- (BOOL)getObjectValue:(out id  _Nullable __autoreleasing *)obj
             forString:(NSString *)string
      errorDescription:(out NSString *__autoreleasing  _Nullable *)error{
    *obj = string;
    return YES;
}

- (NSAttributedString*)attributedStringForObjectValue:(id)obj
                                withDefaultAttributes:(NSDictionary<NSString *,id> *)attrs{
    NSMutableAttributedString *aStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%.1f", [obj floatValue]]];
    if ([obj floatValue] > maxVal) {
        [aStr addAttribute:NSForegroundColorAttributeName
                     value:[NSColor redColor]
                     range:NSMakeRange(0, aStr.length)];
    }
    return aStr;
}

- (BOOL)isPartialStringValid:(NSString *)partialString newEditingString:(NSString *__autoreleasing  _Nullable *)newString errorDescription:(NSString *__autoreleasing  _Nullable *)error{
    NSCharacterSet *inputChrSet = [NSCharacterSet characterSetWithCharactersInString:partialString];
    NSCharacterSet *numChr = [NSCharacterSet characterSetWithCharactersInString:@"1234567890."];
    if (![numChr isSupersetOfSet:inputChrSet]) {
        return NO;
    }
    return YES;
}

@end
