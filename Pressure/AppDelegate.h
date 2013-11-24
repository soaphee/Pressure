//
//  AppDelegate.h
//  Pressure
//
//  Created by Sophie Pham on 11/24/13.
//  Copyright (c) 2013 Sophie Pham. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

- (IBAction)pressKeySoundUp:(id)sender;
- (IBAction)pressKeySoundDown:(id)sender;
- (IBAction)pressKeyBrightnessUp:(id)sender;
- (IBAction)pressKeyBrightnessDown:(id)sender;
- (IBAction)pressKeyBrightnessToggle:(id)sender;
- (IBAction)pressKeyCapsLock:(id)sender;
- (IBAction)pressKeyHelp:(id)sender;
- (IBAction)pressKeyMute:(id)sender;
- (IBAction)pressKeyNumLock:(id)sender;
- (IBAction)pressKeyContrastUp:(id)sender;
- (IBAction)pressKeyContrastDown:(id)sender;
- (IBAction)pressKeyLaunchPanel:(id)sender;
- (IBAction)pressKeyEject:(id)sender;
- (IBAction)pressKeyVidmirror:(id)sender;
- (IBAction)pressKeyPlay:(id)sender;
- (IBAction)pressKeyNext:(id)sender;
- (IBAction)pressKeyPrevious:(id)sender;
- (IBAction)pressKeyFast:(id)sender;
- (IBAction)pressKeyRewind:(id)sender;
- (IBAction)pressKeyIlluminationUp:(id)sender;
- (IBAction)pressKeyIlluminationDown:(id)sender;
- (IBAction)pressKeyIlluminationToggle:(id)sender;
- (IBAction)launchMissionControl:(id)sender;
- (IBAction)launchDashBoard:(id)sender;
- (IBAction)launchLaunchPad:(id)sender;


@end
