//
//  AppDelegate.m
//  LimitMaxLengthFormatter
//
//  Created by 河野 さおり on 2016/04/25.
//  Copyright © 2016年 河野 さおり. All rights reserved.
//  http://saokkk.seesaa.net/

#import "AppDelegate.h"
#import "MaxLenxFormatter.h"
#import "MaxLenxFormatterAllowInput.h"
#import "NegaToRedFormatter.h"

@interface AppDelegate (){
    IBOutlet NSTextField *txtField1;
    IBOutlet NSSecureTextField *txtField2;
    IBOutlet NSTextField *txtField3;
    IBOutlet NSTextField *txtField4;
    IBOutlet NSTextField *txtField6;
}

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [txtField1.cell setFormatter:[MaxLenxFormatter formatterWithMaxLength:5]];
    [txtField2.cell setFormatter:[MaxLenxFormatter formatterWithMaxLength:10]];
    [txtField3.cell setFormatter:[MaxLenxFormatterAllowInput formatterWithMaxLength:5]];
    [txtField4.cell setFormatter:[MaxLenxFormatterAllowInput formatterWithMaxLength:10]];
    [txtField6.cell setFormatter:[NegaToRedFormatter formatterWithMaxVal:100.0]];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
}

@end
