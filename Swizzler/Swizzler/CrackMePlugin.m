//
//  CrackMePlugin.m
//  Swizzler
//
//  Created by Ryan on 8/27/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "CrackMePlugin.h"
#import <objc/runtime.h>

@implementation CrackMePlugin

- (BOOL) isValidSerial:(NSString*)key{
    NSLog(@"Tried to get value for %@", key, nil);
    return true;
}
/**
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void) load
{
    
    NSLog(@"CrackMePlugin installed");
    
    Class appDelegate = objc_getClass("AppDelegate");
    Class this = self.class;
    
    Method instMeth = class_getInstanceMethod(this, @selector(isValidSerial:));
    IMP haxxed = method_getImplementation(instMeth);
    
    Method origValidSerialCheck    = class_getInstanceMethod(appDelegate, @selector(isValidSerial:));
    
    method_setImplementation(origValidSerialCheck, haxxed);
}

@end
