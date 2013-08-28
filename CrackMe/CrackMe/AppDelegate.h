//
//  AppDelegate.h
//  CrackMe
//
//  Created by Ryan on 8/27/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *registrationButton;
@property (weak) IBOutlet NSTextField *registrationTextBox;
@property (weak) IBOutlet NSTextField *registrationStatus;

- (IBAction)doRegistration:(id)sender;
- (BOOL) isValidSerial:(NSString*)serial;

@end