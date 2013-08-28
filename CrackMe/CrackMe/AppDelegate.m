#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)doRegistration:(id)sender {
    NSString *currentSerial = [self.registrationTextBox stringValue];
    
    if([self isValidSerial: currentSerial]){
      [self.registrationStatus setStringValue:@"Registered!"];
    }else {
      [self.registrationStatus setStringValue:@"Incorrect Serial: Not Registered"];
    }
}

- (BOOL) isValidSerial:(NSString*)serial{
    return [serial isEqualTo: @"secretRegistrationKey"];
}

@end
